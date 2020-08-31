#include "imgui.h"
#include "imgui_internal.h"
#include "imGuIZMOquat.h"
#include "cimguizmo_quat.h"


CIMGUI_API void resizeAxesOf(float sx,float sy, float sz)
{
	imguiGizmo::resizeAxesOf(vec3(sx,sy,sz));
}

CIMGUI_API void restoreAxesSize()
{
	imguiGizmo::restoreAxesSize();
}

CIMGUI_API void resizeSolidOf(float sx)
{
	imguiGizmo::resizeSolidOf(sx);
}

CIMGUI_API void restoreSolidSize()
{
	imguiGizmo::restoreSolidSize();
}


CIMGUI_API void setDirectionColor(const ImVec4 color)
{
	imguiGizmo::setDirectionColor(color);
}

CIMGUI_API void restoreDirectionColor()
{
	imguiGizmo::restoreDirectionColor();
}

CIMGUI_API void setSphereColors(const ImVec4 a,const ImVec4 b)
{
	imguiGizmo::setSphereColors(a,b);
}

CIMGUI_API void restoreSphereColors()
{
	imguiGizmo::restoreSphereColors();
}

CIMGUI_API void setGizmoFeelingRot(float f)
{
	imguiGizmo::setGizmoFeelingRot(f);
}

CIMGUI_API float getGizmoFeelingRot()
{
	return imguiGizmo::getGizmoFeelingRot();
}

CIMGUI_API void setDollyScale(float f)
{
	imguiGizmo::setDollyScale(f);
}

CIMGUI_API float getDollyScale()
{
	return imguiGizmo::getDollyScale();
}

CIMGUI_API void setPanScale(float f)
{
	imguiGizmo::setPanScale(f);
}

CIMGUI_API float getPanScale()
{
	return imguiGizmo::getPanScale();
}

CIMGUI_API void mat4_cast( quat *q,Mat4* mat)
{
	*mat = mat4_cast(*q);
}

CIMGUI_API void mat4_pos_cast( quat *q, float pos[3], Mat4* mat)
{
	*mat = mat4_cast(*q);
	mat->m03 = pos[0];
	mat->m13 = pos[1];
	mat->m23 = pos[2];
}

struct m16 {
    union {
        float v[16];
        struct {      float m00, m01, m02, m03,
                        m10, m11, m12, m13,
                        m20, m21, m22, m23,
                        m30, m31, m32, m33; };
    };
};

//https://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToQuaternion/
CIMGUI_API void quat_cast(float f[16], quat *qq)
{
	m16 m = *(m16*)f;
	float qw, qx, qy, qz;
	float tr = m.m00 + m.m11 + m.m22;

	if (tr > 0) { 
	float S = sqrt(tr+1.0f) * 2.0f; // S=4*qw 
	qw = 0.25f * S;
	qx = (m.m21 - m.m12) / S;
	qy = (m.m02 - m.m20) / S; 
	qz = (m.m10 - m.m01) / S; 
	} else if ((m.m00 > m.m11)&&(m.m00 > m.m22)) { 
	float S = sqrt(1.0f + m.m00 - m.m11 - m.m22) * 2.0f; // S=4*qx 
	qw = (m.m21 - m.m12) / S;
	qx = 0.25f * S;
	qy = (m.m01 + m.m10) / S; 
	qz = (m.m02 + m.m20) / S; 
	} else if (m.m11 > m.m22) { 
	float S = sqrt(1.0f + m.m11 - m.m00 - m.m22) * 2.0f; // S=4*qy
	qw = (m.m02 - m.m20) / S;
	qx = (m.m01 + m.m10) / S; 
	qy = 0.25f * S;
	qz = (m.m12 + m.m21) / S; 
	} else { 
	float S = sqrt(1.0f + m.m22 - m.m00 - m.m11) * 2.0f; // S=4*qz
	qw = (m.m10 - m.m01) / S;
	qx = (m.m02 + m.m20) / S;
	qy = (m.m12 + m.m21) / S;
	qz = 0.25f * S;
	}
	*qq = quat(qw, qx, qy, qz);
}

CIMGUI_API void quat_pos_cast(float f[16], quat *qq, float pos[3])
{
	quat_cast(f,qq);
	pos[0] = f[3];
	pos[1] = f[7];
	pos[2] = f[11];
}

CIMGUI_API bool ImGuizmo3D(const char* label, quat *q, float size, const int mode)
{

	return ImGui::gizmo3D(label,*q,size,mode);

}

CIMGUI_API bool ImGuizmo3Dquat(const char* label, float q[4], float size, const int mode)
{
    quat qq = quat(q[0],q[1],q[2],q[3]);
	bool ret = ImGui::gizmo3D(label,qq,size,mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	return ret;
}

CIMGUI_API bool ImGuizmo3Dvec4(const char* label, float a[4], float size, const int mode)
{
    vec4 axis_angle = vec4(a[0],a[1],a[2],a[3]);
	bool ret = ImGui::gizmo3D(label,axis_angle,size,mode);
	a[0] = axis_angle.x;a[1] = axis_angle.y;a[2] = axis_angle.z;a[3] = axis_angle.w;
	return ret;
}

CIMGUI_API bool ImGuizmo3Dvec3(const char*label ,float v[3],float size,const int mode)
{
   vec3 dir = vec3(v[0],v[1],v[2]);
   bool ret =ImGui::gizmo3D(label,dir,size,mode);
   v[0] = dir[0]; v[1] = dir[1]; v[2] = dir[2];
   return ret;
   
}

CIMGUI_API bool ImGuizmo3Dquatquat(const char*label,float q1[4],float q2[4],float size,const int mode)
{
    quat qq1 = quat(q1[0],q1[1],q1[2],q1[3]);
	quat qq2 = quat(q2[0],q2[1],q2[2],q2[3]);
	bool ret = ImGui::gizmo3D(label, qq1, qq2,size,mode);
	q1[0] = qq1.w;q1[1] = qq1.x;q1[2] = qq1.y;q1[3] = qq1.z;
	q2[0] = qq2.w;q2[1] = qq2.x;q2[2] = qq2.y;q2[3] = qq2.z;
	return ret;
}
CIMGUI_API bool ImGuizmo3Dquatvec4(const char* label,float q[4],float a[4],float size,const int mode)
{
    quat qq = quat(q[0],q[1],q[2],q[3]);
	vec4 axis_angle = vec4(a[0],a[1],a[2],a[3]);
	bool ret = ImGui::gizmo3D(label, qq, axis_angle, size, mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	a[0] = axis_angle.x;a[1] = axis_angle.y;a[2] = axis_angle.z;a[3] = axis_angle.w;
	return ret;
}
CIMGUI_API bool ImGuizmo3Dquatvec3(const char* label, float q[4], float v[3],float size,const int mode)
{
    quat qq = quat(q[0],q[1],q[2],q[3]);
	vec3 dir = vec3(v[0],v[1],v[2]);
	bool ret = ImGui::gizmo3D(label, qq, dir, size, mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	v[0] = dir[0]; v[1] = dir[1]; v[2] = dir[2];
	return ret;
}

CIMGUI_API bool ImGuizmo3DPan(const char* label, float pa[3], quat *q, float size, const int mode)
{
	
	vec3 pan = vec3(pa[0],pa[1],pa[2]);
	bool ret = ImGui::gizmo3D(label,pan,*q,size,mode);
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}

CIMGUI_API bool ImGuizmo3DPanquat(const char* label, float pa[3], float q[4], float size, const int mode)
{
    vec3 pan = vec3(pa[0],pa[1],pa[2]);
	quat qq = quat(q[0],q[1],q[2],q[3]);
	bool ret = ImGui::gizmo3D(label,pan,qq,size,mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}

CIMGUI_API bool ImGuizmo3DPanvec4(const char* label, float pa[3], float a[4], float size, const int mode)
{
    vec3 pan = vec3(pa[0],pa[1],pa[2]);
	vec4 axis_angle = vec4(a[0],a[1],a[2],a[3]);
	bool ret = ImGui::gizmo3D(label,pan,axis_angle,size,mode);
	a[0] = axis_angle.x;a[1] = axis_angle.y;a[2] = axis_angle.z;a[3] = axis_angle.w;
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}

CIMGUI_API bool ImGuizmo3DPanvec3(const char*label, float pa[3] ,float v[3],float size,const int mode)
{
   
   vec3 pan = vec3(pa[0],pa[1],pa[2]);
   vec3 dir = vec3(v[0],v[1],v[2]);
   bool ret =ImGui::gizmo3D(label,pan,dir,size,mode);
   v[0] = dir[0]; v[1] = dir[1]; v[2] = dir[2];
   pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
   return ret;
   
}

CIMGUI_API bool ImGuizmo3DPanquatquat(const char*label, float pa[3],float q1[4],float q2[4],float size,const int mode)
{
    vec3 pan = vec3(pa[0],pa[1],pa[2]);
	quat qq1 = quat(q1[0],q1[1],q1[2],q1[3]);
	quat qq2 = quat(q2[0],q2[1],q2[2],q2[3]);
	bool ret = ImGui::gizmo3D(label,pan, qq1, qq2,size,mode);
	q1[0] = qq1.w;q1[1] = qq1.x;q1[2] = qq1.y;q1[3] = qq1.z;
	q2[0] = qq2.w;q2[1] = qq2.x;q2[2] = qq2.y;q2[3] = qq2.z;
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}
CIMGUI_API bool ImGuizmo3DPanquatvec4(const char* label, float pa[3],float q[4],float a[4],float size,const int mode)
{
    vec3 pan = vec3(pa[0],pa[1],pa[2]);
	quat qq = quat(q[0],q[1],q[2],q[3]);
	vec4 axis_angle = vec4(a[0],a[1],a[2],a[3]);
	bool ret = ImGui::gizmo3D(label,pan, qq, axis_angle, size, mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	a[0] = axis_angle.x;a[1] = axis_angle.y;a[2] = axis_angle.z;a[3] = axis_angle.w;
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}
CIMGUI_API bool ImGuizmo3DPanquatvec3(const char* label, float pa[3], float q[4], float v[3],float size,const int mode)
{
    vec3 pan = vec3(pa[0],pa[1],pa[2]);
	quat qq = quat(q[0],q[1],q[2],q[3]);
	vec3 dir = vec3(v[0],v[1],v[2]);
	bool ret = ImGui::gizmo3D(label,pan, qq, dir, size, mode);
	q[0] = qq.w;q[1] = qq.x;q[2] = qq.y;q[3] = qq.z;
	v[0] = dir[0]; v[1] = dir[1]; v[2] = dir[2];
	pa[0] = pan[0]; pa[1]=pan[1]; pa[2] = pan[2];
	return ret;
}
