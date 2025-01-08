local t={
  iggizmo3D={
    [1]={
      args="(const char* noname1,quat* noname2,float noname3,const int noname4)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="noname3",
          type="float"},
        [4]={
          name="noname4",
          type="const int"}},
      argsoriginal="(const char*,quat&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,noname3,noname4)",
      cimguiname="iggizmo3D",
      defaults={
        noname3="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname4="imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:317",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_quatPtrFloat",
      ret="bool",
      signature="(const char*,quat*,float,const int)",
      stname=""},
    [2]={
      args="(const char* noname1,vec4* noname2,float noname3,const int noname4)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec4*"},
        [3]={
          name="noname3",
          type="float"},
        [4]={
          name="noname4",
          type="const int"}},
      argsoriginal="(const char*,vec4&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,noname3,noname4)",
      cimguiname="iggizmo3D",
      defaults={
        noname3="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname4="imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:318",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec4Ptr",
      ret="bool",
      signature="(const char*,vec4*,float,const int)",
      stname=""},
    [3]={
      args="(const char* noname1,vec3* noname2,float noname3,const int noname4)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          type="float"},
        [4]={
          name="noname4",
          type="const int"}},
      argsoriginal="(const char*,vec3&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDirection)",
      call_args="(noname1,*noname2,noname3,noname4)",
      cimguiname="iggizmo3D",
      defaults={
        noname3="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname4="imguiGizmo::modeDirection"},
      funcname="gizmo3D",
      location="imGuIZMOquat:319",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3PtrFloat",
      ret="bool",
      signature="(const char*,vec3*,float,const int)",
      stname=""},
    [4]={
      args="(const char* noname1,quat* noname2,quat* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="quat*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,quat&,quat&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:321",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_quatPtrquatPtr",
      ret="bool",
      signature="(const char*,quat*,quat*,float,const int)",
      stname=""},
    [5]={
      args="(const char* noname1,quat* noname2,vec4* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="vec4*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,quat&,vec4&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:322",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_quatPtrvec4Ptr",
      ret="bool",
      signature="(const char*,quat*,vec4*,float,const int)",
      stname=""},
    [6]={
      args="(const char* noname1,quat* noname2,vec3* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="vec3*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,quat&,vec3&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:323",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_quatPtrvec3Ptr",
      ret="bool",
      signature="(const char*,quat*,vec3*,float,const int)",
      stname=""},
    [7]={
      args="(const char* noname1,vec3* noname2,quat* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="quat*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,vec3&,quat&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:328",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3PtrquatPtrFloat",
      ret="bool",
      signature="(const char*,vec3*,quat*,float,const int)",
      stname=""},
    [8]={
      args="(const char* noname1,vec3* noname2,vec4* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="vec4*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,vec3&,vec4&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::mode3Axes|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:329",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3Ptrvec4Ptr",
      ret="bool",
      signature="(const char*,vec3*,vec4*,float,const int)",
      stname=""},
    [9]={
      args="(const char* noname1,vec3* noname2,vec3* noname3,float noname4,const int noname5)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="vec3*"},
        [4]={
          name="noname4",
          type="float"},
        [5]={
          name="noname5",
          type="const int"}},
      argsoriginal="(const char*,vec3&,vec3&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDirection)",
      call_args="(noname1,*noname2,*noname3,noname4,noname5)",
      cimguiname="iggizmo3D",
      defaults={
        noname4="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname5="imguiGizmo::modeDirection"},
      funcname="gizmo3D",
      location="imGuIZMOquat:330",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3Ptrvec3Ptr",
      ret="bool",
      signature="(const char*,vec3*,vec3*,float,const int)",
      stname=""},
    [10]={
      args="(const char* noname1,vec3* noname2,quat* noname3,quat* noname4,float noname5,const int noname6)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="quat*"},
        [4]={
          name="noname4",
          reftoptr=true,
          type="quat*"},
        [5]={
          name="noname5",
          type="float"},
        [6]={
          name="noname6",
          type="const int"}},
      argsoriginal="(const char*,vec3&,quat&,quat&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,*noname4,noname5,noname6)",
      cimguiname="iggizmo3D",
      defaults={
        noname5="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname6="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:332",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3PtrquatPtrquatPtr",
      ret="bool",
      signature="(const char*,vec3*,quat*,quat*,float,const int)",
      stname=""},
    [11]={
      args="(const char* noname1,vec3* noname2,quat* noname3,vec4* noname4,float noname5,const int noname6)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="quat*"},
        [4]={
          name="noname4",
          reftoptr=true,
          type="vec4*"},
        [5]={
          name="noname5",
          type="float"},
        [6]={
          name="noname6",
          type="const int"}},
      argsoriginal="(const char*,vec3&,quat&,vec4&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,*noname4,noname5,noname6)",
      cimguiname="iggizmo3D",
      defaults={
        noname5="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname6="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:333",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3PtrquatPtrvec4Ptr",
      ret="bool",
      signature="(const char*,vec3*,quat*,vec4*,float,const int)",
      stname=""},
    [12]={
      args="(const char* noname1,vec3* noname2,quat* noname3,vec3* noname4,float noname5,const int noname6)",
      argsT={
        [1]={
          name="noname1",
          type="const char*"},
        [2]={
          name="noname2",
          reftoptr=true,
          type="vec3*"},
        [3]={
          name="noname3",
          reftoptr=true,
          type="quat*"},
        [4]={
          name="noname4",
          reftoptr=true,
          type="vec3*"},
        [5]={
          name="noname5",
          type="float"},
        [6]={
          name="noname6",
          type="const int"}},
      argsoriginal="(const char*,vec3&,quat&,vec3&,float=(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2)),const int=imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin)",
      call_args="(noname1,*noname2,*noname3,*noname4,noname5,noname6)",
      cimguiname="iggizmo3D",
      defaults={
        noname5="(ImGui::GetFrameHeightWithSpacing()* 4 -(ImGui::GetStyle().ItemSpacing.y* 2))",
        noname6="imguiGizmo::modeDual|imguiGizmo::cubeAtOrigin"},
      funcname="gizmo3D",
      location="imGuIZMOquat:334",
      namespace="ImGui",
      ov_cimguiname="iggizmo3D_vec3PtrquatPtrvec3Ptr",
      ret="bool",
      signature="(const char*,vec3*,quat*,vec3*,float,const int)",
      stname=""},
    ["(const char*,quat*,float,const int)"]=nil,
    ["(const char*,quat*,quat*,float,const int)"]=nil,
    ["(const char*,quat*,vec3*,float,const int)"]=nil,
    ["(const char*,quat*,vec4*,float,const int)"]=nil,
    ["(const char*,vec3*,float,const int)"]=nil,
    ["(const char*,vec3*,quat*,float,const int)"]=nil,
    ["(const char*,vec3*,quat*,quat*,float,const int)"]=nil,
    ["(const char*,vec3*,quat*,vec3*,float,const int)"]=nil,
    ["(const char*,vec3*,quat*,vec4*,float,const int)"]=nil,
    ["(const char*,vec3*,vec3*,float,const int)"]=nil,
    ["(const char*,vec3*,vec4*,float,const int)"]=nil,
    ["(const char*,vec4*,float,const int)"]=nil},
  imguiGizmo_buildCone={
    [1]={
      args="(const float x0,const float x1,const float radius,const int slices)",
      argsT={
        [1]={
          name="x0",
          type="const float"},
        [2]={
          name="x1",
          type="const float"},
        [3]={
          name="radius",
          type="const float"},
        [4]={
          name="slices",
          type="const int"}},
      argsoriginal="(const float x0,const float x1,const float radius,const int slices)",
      call_args="(x0,x1,radius,slices)",
      cimguiname="imguiGizmo_buildCone",
      defaults={},
      funcname="buildCone",
      is_static_function=true,
      location="imGuIZMOquat:117",
      ov_cimguiname="imguiGizmo_buildCone",
      ret="void",
      signature="(const float,const float,const float,const int)",
      stname="imguiGizmo"},
    ["(const float,const float,const float,const int)"]=nil},
  imguiGizmo_buildCube={
    [1]={
      args="(const float size)",
      argsT={
        [1]={
          name="size",
          type="const float"}},
      argsoriginal="(const float size)",
      call_args="(size)",
      cimguiname="imguiGizmo_buildCube",
      defaults={},
      funcname="buildCube",
      is_static_function=true,
      location="imGuIZMOquat:112",
      ov_cimguiname="imguiGizmo_buildCube",
      ret="void",
      signature="(const float)",
      stname="imguiGizmo"},
    ["(const float)"]=nil},
  imguiGizmo_buildCylinder={
    [1]={
      args="(const float x0,const float x1,const float radius,const int slices)",
      argsT={
        [1]={
          name="x0",
          type="const float"},
        [2]={
          name="x1",
          type="const float"},
        [3]={
          name="radius",
          type="const float"},
        [4]={
          name="slices",
          type="const int"}},
      argsoriginal="(const float x0,const float x1,const float radius,const int slices)",
      call_args="(x0,x1,radius,slices)",
      cimguiname="imguiGizmo_buildCylinder",
      defaults={},
      funcname="buildCylinder",
      is_static_function=true,
      location="imGuIZMOquat:118",
      ov_cimguiname="imguiGizmo_buildCylinder",
      ret="void",
      signature="(const float,const float,const float,const int)",
      stname="imguiGizmo"},
    ["(const float,const float,const float,const int)"]=nil},
  imguiGizmo_buildPlane={
    [1]={
      args="(const float size,const float thickness)",
      argsT={
        [1]={
          name="size",
          type="const float"},
        [2]={
          name="thickness",
          type="const float"}},
      argsoriginal="(const float size,const float thickness=planeThickness)",
      call_args="(size,thickness)",
      cimguiname="imguiGizmo_buildPlane",
      defaults={
        thickness="planeThickness"},
      funcname="buildPlane",
      is_static_function=true,
      location="imGuIZMOquat:109",
      ov_cimguiname="imguiGizmo_buildPlane",
      ret="void",
      signature="(const float,const float)",
      stname="imguiGizmo"},
    ["(const float,const float)"]=nil},
  imguiGizmo_buildPolygon={
    [1]={
      args="(const vec3 size,ImVector_vec3 * vtx,ImVector_vec3 * norm)",
      argsT={
        [1]={
          name="size",
          type="const vec3"},
        [2]={
          name="vtx",
          reftoptr=true,
          type="ImVector_vec3 *"},
        [3]={
          name="norm",
          reftoptr=true,
          type="ImVector_vec3 *"}},
      argsoriginal="(const vec3& size,ImVector<vec3>& vtx,ImVector<vec3>& norm)",
      call_args="(size,*vtx,*norm)",
      cimguiname="imguiGizmo_buildPolygon",
      defaults={},
      funcname="buildPolygon",
      is_static_function=true,
      location="imGuIZMOquat:115",
      ov_cimguiname="imguiGizmo_buildPolygon",
      ret="void",
      signature="(const vec3,ImVector_vec3 *,ImVector_vec3 *)",
      stname="imguiGizmo"},
    ["(const vec3,ImVector_vec3 *,ImVector_vec3 *)"]=nil},
  imguiGizmo_buildSphere={
    [1]={
      args="(const float radius,const int tessFactor)",
      argsT={
        [1]={
          name="radius",
          type="const float"},
        [2]={
          name="tessFactor",
          type="const int"}},
      argsoriginal="(const float radius,const int tessFactor)",
      call_args="(radius,tessFactor)",
      cimguiname="imguiGizmo_buildSphere",
      defaults={},
      funcname="buildSphere",
      is_static_function=true,
      location="imGuIZMOquat:116",
      ov_cimguiname="imguiGizmo_buildSphere",
      ret="void",
      signature="(const float,const int)",
      stname="imguiGizmo"},
    ["(const float,const int)"]=nil},
  imguiGizmo_drawFunc={
    [1]={
      args="(imguiGizmo* self,const char* label,float size)",
      argsT={
        [1]={
          name="self",
          type="imguiGizmo*"},
        [2]={
          name="label",
          type="const char*"},
        [3]={
          name="size",
          type="float"}},
      argsoriginal="(const char* label,float size)",
      call_args="(label,size)",
      cimguiname="imguiGizmo_drawFunc",
      defaults={},
      funcname="drawFunc",
      location="imGuIZMOquat:187",
      ov_cimguiname="imguiGizmo_drawFunc",
      ret="bool",
      signature="(const char*,float)",
      stname="imguiGizmo"},
    ["(const char*,float)"]=nil},
  imguiGizmo_getDollyScale={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_getDollyScale",
      defaults={},
      funcname="getDollyScale",
      is_static_function=true,
      location="imGuIZMOquat:171",
      ov_cimguiname="imguiGizmo_getDollyScale",
      ret="float",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_getGizmoFeelingRot={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_getGizmoFeelingRot",
      defaults={},
      funcname="getGizmoFeelingRot",
      is_static_function=true,
      location="imGuIZMOquat:158",
      ov_cimguiname="imguiGizmo_getGizmoFeelingRot",
      ret="float",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_getPanScale={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_getPanScale",
      defaults={},
      funcname="getPanScale",
      is_static_function=true,
      location="imGuIZMOquat:174",
      ov_cimguiname="imguiGizmo_getPanScale",
      ret="float",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_getTransforms={
    [1]={
      args="(imguiGizmo* self,quat* q,const char* label,vec3* dir,float size)",
      argsT={
        [1]={
          name="self",
          type="imguiGizmo*"},
        [2]={
          name="q",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="label",
          type="const char*"},
        [4]={
          name="dir",
          reftoptr=true,
          type="vec3*"},
        [5]={
          name="size",
          type="float"}},
      argsoriginal="(quat& q,const char* label,vec3& dir,float size)",
      call_args="(*q,label,*dir,size)",
      cimguiname="imguiGizmo_getTransforms",
      defaults={},
      funcname="getTransforms",
      location="imGuIZMOquat:196",
      ov_cimguiname="imguiGizmo_getTransforms_vec3Ptr",
      ret="bool",
      signature="(quat*,const char*,vec3*,float)",
      stname="imguiGizmo"},
    [2]={
      args="(imguiGizmo* self,quat* q,const char* label,vec4* axis_angle,float size)",
      argsT={
        [1]={
          name="self",
          type="imguiGizmo*"},
        [2]={
          name="q",
          reftoptr=true,
          type="quat*"},
        [3]={
          name="label",
          type="const char*"},
        [4]={
          name="axis_angle",
          reftoptr=true,
          type="vec4*"},
        [5]={
          name="size",
          type="float"}},
      argsoriginal="(quat& q,const char* label,vec4& axis_angle,float size)",
      call_args="(*q,label,*axis_angle,size)",
      cimguiname="imguiGizmo_getTransforms",
      defaults={},
      funcname="getTransforms",
      location="imGuIZMOquat:211",
      ov_cimguiname="imguiGizmo_getTransforms_vec4Ptr",
      ret="bool",
      signature="(quat*,const char*,vec4*,float)",
      stname="imguiGizmo"},
    ["(quat*,const char*,vec3*,float)"]=nil,
    ["(quat*,const char*,vec4*,float)"]=nil},
  imguiGizmo_modeSettings={
    [1]={
      args="(imguiGizmo* self,int mode)",
      argsT={
        [1]={
          name="self",
          type="imguiGizmo*"},
        [2]={
          name="mode",
          type="int"}},
      argsoriginal="(int mode)",
      call_args="(mode)",
      cimguiname="imguiGizmo_modeSettings",
      defaults={},
      funcname="modeSettings",
      location="imGuIZMOquat:189",
      ov_cimguiname="imguiGizmo_modeSettings",
      ret="void",
      signature="(int)",
      stname="imguiGizmo"},
    ["(int)"]=nil},
  imguiGizmo_resizeAxesOf={
    [1]={
      args="(const vec3 newSize)",
      argsT={
        [1]={
          name="newSize",
          type="const vec3"}},
      argsoriginal="(const vec3 &newSize)",
      call_args="(newSize)",
      cimguiname="imguiGizmo_resizeAxesOf",
      defaults={},
      funcname="resizeAxesOf",
      is_static_function=true,
      location="imGuIZMOquat:123",
      ov_cimguiname="imguiGizmo_resizeAxesOf",
      ret="void",
      signature="(const vec3)",
      stname="imguiGizmo"},
    ["(const vec3)"]=nil},
  imguiGizmo_resizeSolidOf={
    [1]={
      args="(float newSize)",
      argsT={
        [1]={
          name="newSize",
          type="float"}},
      argsoriginal="(float newSize)",
      call_args="(newSize)",
      cimguiname="imguiGizmo_resizeSolidOf",
      defaults={},
      funcname="resizeSolidOf",
      is_static_function=true,
      location="imGuIZMOquat:128",
      ov_cimguiname="imguiGizmo_resizeSolidOf",
      ret="void",
      signature="(float)",
      stname="imguiGizmo"},
    ["(float)"]=nil},
  imguiGizmo_restoreAxesSize={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_restoreAxesSize",
      defaults={},
      funcname="restoreAxesSize",
      is_static_function=true,
      location="imGuIZMOquat:125",
      ov_cimguiname="imguiGizmo_restoreAxesSize",
      ret="void",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_restoreDirectionColor={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_restoreDirectionColor",
      defaults={},
      funcname="restoreDirectionColor",
      is_static_function=true,
      location="imGuIZMOquat:141",
      ov_cimguiname="imguiGizmo_restoreDirectionColor",
      ret="void",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_restoreSolidSize={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_restoreSolidSize",
      defaults={},
      funcname="restoreSolidSize",
      is_static_function=true,
      location="imGuIZMOquat:130",
      ov_cimguiname="imguiGizmo_restoreSolidSize",
      ret="void",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_restoreSphereColors={
    [1]={
      args="()",
      argsT={},
      argsoriginal="()",
      call_args="()",
      cimguiname="imguiGizmo_restoreSphereColors",
      defaults={},
      funcname="restoreSphereColors",
      is_static_function=true,
      location="imGuIZMOquat:150",
      ov_cimguiname="imguiGizmo_restoreSphereColors",
      ret="void",
      signature="()",
      stname="imguiGizmo"},
    ["()"]=nil},
  imguiGizmo_setDirectionColor={
    [1]={
      args="(ImU32 dColor,const ImU32 pColor)",
      argsT={
        [1]={
          name="dColor",
          type="ImU32"},
        [2]={
          name="pColor",
          type="const ImU32"}},
      argsoriginal="(ImU32 dColor,const ImU32 pColor)",
      call_args="(dColor,pColor)",
      cimguiname="imguiGizmo_setDirectionColor",
      defaults={},
      funcname="setDirectionColor",
      is_static_function=true,
      location="imGuIZMOquat:133",
      ov_cimguiname="imguiGizmo_setDirectionColor_U32U32",
      ret="void",
      signature="(ImU32,const ImU32)",
      stname="imguiGizmo"},
    [2]={
      args="(const ImVec4 dColor,const ImVec4 pColor)",
      argsT={
        [1]={
          name="dColor",
          type="const ImVec4"},
        [2]={
          name="pColor",
          type="const ImVec4"}},
      argsoriginal="(const ImVec4 &dColor,const ImVec4 &pColor)",
      call_args="(dColor,pColor)",
      cimguiname="imguiGizmo_setDirectionColor",
      defaults={},
      funcname="setDirectionColor",
      is_static_function=true,
      location="imGuIZMOquat:135",
      ov_cimguiname="imguiGizmo_setDirectionColor_Vec4Vec4",
      ret="void",
      signature="(const ImVec4,const ImVec4)",
      stname="imguiGizmo"},
    [3]={
      args="(ImU32 color)",
      argsT={
        [1]={
          name="color",
          type="ImU32"}},
      argsoriginal="(ImU32 color)",
      call_args="(color)",
      cimguiname="imguiGizmo_setDirectionColor",
      defaults={},
      funcname="setDirectionColor",
      is_static_function=true,
      location="imGuIZMOquat:139",
      ov_cimguiname="imguiGizmo_setDirectionColor_U32",
      ret="void",
      signature="(ImU32)",
      stname="imguiGizmo"},
    [4]={
      args="(const ImVec4 color)",
      argsT={
        [1]={
          name="color",
          type="const ImVec4"}},
      argsoriginal="(const ImVec4& color)",
      call_args="(color)",
      cimguiname="imguiGizmo_setDirectionColor",
      defaults={},
      funcname="setDirectionColor",
      is_static_function=true,
      location="imGuIZMOquat:140",
      ov_cimguiname="imguiGizmo_setDirectionColor_Vec4",
      ret="void",
      signature="(const ImVec4)",
      stname="imguiGizmo"},
    ["(ImU32)"]=nil,
    ["(ImU32,const ImU32)"]=nil,
    ["(const ImVec4)"]=nil,
    ["(const ImVec4,const ImVec4)"]=nil},
  imguiGizmo_setDollyModifier={
    [1]={
      args="(vgModifiers v)",
      argsT={
        [1]={
          name="v",
          type="vgModifiers"}},
      argsoriginal="(vgModifiers v)",
      call_args="(v)",
      cimguiname="imguiGizmo_setDollyModifier",
      defaults={},
      funcname="setDollyModifier",
      is_static_function=true,
      location="imGuIZMOquat:167",
      ov_cimguiname="imguiGizmo_setDollyModifier",
      ret="void",
      signature="(vgModifiers)",
      stname="imguiGizmo"},
    ["(vgModifiers)"]=nil},
  imguiGizmo_setDollyScale={
    [1]={
      args="(float scale)",
      argsT={
        [1]={
          name="scale",
          type="float"}},
      argsoriginal="(float scale)",
      call_args="(scale)",
      cimguiname="imguiGizmo_setDollyScale",
      defaults={},
      funcname="setDollyScale",
      is_static_function=true,
      location="imGuIZMOquat:170",
      ov_cimguiname="imguiGizmo_setDollyScale",
      ret="void",
      signature="(float)",
      stname="imguiGizmo"},
    ["(float)"]=nil},
  imguiGizmo_setDualMode={
    [1]={
      args="(imguiGizmo* self,const int mode)",
      argsT={
        [1]={
          name="self",
          type="imguiGizmo*"},
        [2]={
          name="mode",
          type="const int"}},
      argsoriginal="(const int mode)",
      call_args="(mode)",
      cimguiname="imguiGizmo_setDualMode",
      defaults={},
      funcname="setDualMode",
      location="imGuIZMOquat:192",
      ov_cimguiname="imguiGizmo_setDualMode",
      ret="void",
      signature="(const int)",
      stname="imguiGizmo"},
    ["(const int)"]=nil},
  imguiGizmo_setGizmoFeelingRot={
    [1]={
      args="(float f)",
      argsT={
        [1]={
          name="f",
          type="float"}},
      argsoriginal="(float f)",
      call_args="(f)",
      cimguiname="imguiGizmo_setGizmoFeelingRot",
      defaults={},
      funcname="setGizmoFeelingRot",
      is_static_function=true,
      location="imGuIZMOquat:157",
      ov_cimguiname="imguiGizmo_setGizmoFeelingRot",
      ret="void",
      signature="(float)",
      stname="imguiGizmo"},
    ["(float)"]=nil},
  imguiGizmo_setPanModifier={
    [1]={
      args="(vgModifiers v)",
      argsT={
        [1]={
          name="v",
          type="vgModifiers"}},
      argsoriginal="(vgModifiers v)",
      call_args="(v)",
      cimguiname="imguiGizmo_setPanModifier",
      defaults={},
      funcname="setPanModifier",
      is_static_function=true,
      location="imGuIZMOquat:166",
      ov_cimguiname="imguiGizmo_setPanModifier",
      ret="void",
      signature="(vgModifiers)",
      stname="imguiGizmo"},
    ["(vgModifiers)"]=nil},
  imguiGizmo_setPanScale={
    [1]={
      args="(float scale)",
      argsT={
        [1]={
          name="scale",
          type="float"}},
      argsoriginal="(float scale)",
      call_args="(scale)",
      cimguiname="imguiGizmo_setPanScale",
      defaults={},
      funcname="setPanScale",
      is_static_function=true,
      location="imGuIZMOquat:173",
      ov_cimguiname="imguiGizmo_setPanScale",
      ret="void",
      signature="(float)",
      stname="imguiGizmo"},
    ["(float)"]=nil},
  imguiGizmo_setSphereColors={
    [1]={
      args="(const ImVec4 a,const ImVec4 b)",
      argsT={
        [1]={
          name="a",
          type="const ImVec4"},
        [2]={
          name="b",
          type="const ImVec4"}},
      argsoriginal="(const ImVec4& a,const ImVec4& b)",
      call_args="(a,b)",
      cimguiname="imguiGizmo_setSphereColors",
      defaults={},
      funcname="setSphereColors",
      is_static_function=true,
      location="imGuIZMOquat:145",
      ov_cimguiname="imguiGizmo_setSphereColors_Vec4",
      ret="void",
      signature="(const ImVec4,const ImVec4)",
      stname="imguiGizmo"},
    [2]={
      args="(ImU32 a,ImU32 b)",
      argsT={
        [1]={
          name="a",
          type="ImU32"},
        [2]={
          name="b",
          type="ImU32"}},
      argsoriginal="(ImU32 a,ImU32 b)",
      call_args="(a,b)",
      cimguiname="imguiGizmo_setSphereColors",
      defaults={},
      funcname="setSphereColors",
      is_static_function=true,
      location="imGuIZMOquat:147",
      ov_cimguiname="imguiGizmo_setSphereColors_U32",
      ret="void",
      signature="(ImU32,ImU32)",
      stname="imguiGizmo"},
    ["(ImU32,ImU32)"]=nil,
    ["(const ImVec4,const ImVec4)"]=nil}}
t.iggizmo3D["(const char*,quat*,float,const int)"]=t.iggizmo3D[1]
t.iggizmo3D["(const char*,quat*,quat*,float,const int)"]=t.iggizmo3D[4]
t.iggizmo3D["(const char*,quat*,vec3*,float,const int)"]=t.iggizmo3D[6]
t.iggizmo3D["(const char*,quat*,vec4*,float,const int)"]=t.iggizmo3D[5]
t.iggizmo3D["(const char*,vec3*,float,const int)"]=t.iggizmo3D[3]
t.iggizmo3D["(const char*,vec3*,quat*,float,const int)"]=t.iggizmo3D[7]
t.iggizmo3D["(const char*,vec3*,quat*,quat*,float,const int)"]=t.iggizmo3D[10]
t.iggizmo3D["(const char*,vec3*,quat*,vec3*,float,const int)"]=t.iggizmo3D[12]
t.iggizmo3D["(const char*,vec3*,quat*,vec4*,float,const int)"]=t.iggizmo3D[11]
t.iggizmo3D["(const char*,vec3*,vec3*,float,const int)"]=t.iggizmo3D[9]
t.iggizmo3D["(const char*,vec3*,vec4*,float,const int)"]=t.iggizmo3D[8]
t.iggizmo3D["(const char*,vec4*,float,const int)"]=t.iggizmo3D[2]
t.imguiGizmo_buildCone["(const float,const float,const float,const int)"]=t.imguiGizmo_buildCone[1]
t.imguiGizmo_buildCube["(const float)"]=t.imguiGizmo_buildCube[1]
t.imguiGizmo_buildCylinder["(const float,const float,const float,const int)"]=t.imguiGizmo_buildCylinder[1]
t.imguiGizmo_buildPlane["(const float,const float)"]=t.imguiGizmo_buildPlane[1]
t.imguiGizmo_buildPolygon["(const vec3,ImVector_vec3 *,ImVector_vec3 *)"]=t.imguiGizmo_buildPolygon[1]
t.imguiGizmo_buildSphere["(const float,const int)"]=t.imguiGizmo_buildSphere[1]
t.imguiGizmo_drawFunc["(const char*,float)"]=t.imguiGizmo_drawFunc[1]
t.imguiGizmo_getDollyScale["()"]=t.imguiGizmo_getDollyScale[1]
t.imguiGizmo_getGizmoFeelingRot["()"]=t.imguiGizmo_getGizmoFeelingRot[1]
t.imguiGizmo_getPanScale["()"]=t.imguiGizmo_getPanScale[1]
t.imguiGizmo_getTransforms["(quat*,const char*,vec3*,float)"]=t.imguiGizmo_getTransforms[1]
t.imguiGizmo_getTransforms["(quat*,const char*,vec4*,float)"]=t.imguiGizmo_getTransforms[2]
t.imguiGizmo_modeSettings["(int)"]=t.imguiGizmo_modeSettings[1]
t.imguiGizmo_resizeAxesOf["(const vec3)"]=t.imguiGizmo_resizeAxesOf[1]
t.imguiGizmo_resizeSolidOf["(float)"]=t.imguiGizmo_resizeSolidOf[1]
t.imguiGizmo_restoreAxesSize["()"]=t.imguiGizmo_restoreAxesSize[1]
t.imguiGizmo_restoreDirectionColor["()"]=t.imguiGizmo_restoreDirectionColor[1]
t.imguiGizmo_restoreSolidSize["()"]=t.imguiGizmo_restoreSolidSize[1]
t.imguiGizmo_restoreSphereColors["()"]=t.imguiGizmo_restoreSphereColors[1]
t.imguiGizmo_setDirectionColor["(ImU32)"]=t.imguiGizmo_setDirectionColor[3]
t.imguiGizmo_setDirectionColor["(ImU32,const ImU32)"]=t.imguiGizmo_setDirectionColor[1]
t.imguiGizmo_setDirectionColor["(const ImVec4)"]=t.imguiGizmo_setDirectionColor[4]
t.imguiGizmo_setDirectionColor["(const ImVec4,const ImVec4)"]=t.imguiGizmo_setDirectionColor[2]
t.imguiGizmo_setDollyModifier["(vgModifiers)"]=t.imguiGizmo_setDollyModifier[1]
t.imguiGizmo_setDollyScale["(float)"]=t.imguiGizmo_setDollyScale[1]
t.imguiGizmo_setDualMode["(const int)"]=t.imguiGizmo_setDualMode[1]
t.imguiGizmo_setGizmoFeelingRot["(float)"]=t.imguiGizmo_setGizmoFeelingRot[1]
t.imguiGizmo_setPanModifier["(vgModifiers)"]=t.imguiGizmo_setPanModifier[1]
t.imguiGizmo_setPanScale["(float)"]=t.imguiGizmo_setPanScale[1]
t.imguiGizmo_setSphereColors["(ImU32,ImU32)"]=t.imguiGizmo_setSphereColors[2]
t.imguiGizmo_setSphereColors["(const ImVec4,const ImVec4)"]=t.imguiGizmo_setSphereColors[1]
 return t