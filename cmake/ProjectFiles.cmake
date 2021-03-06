﻿include_guard( DIRECTORY )

list(APPEND flexlib_SOURCES
  ${flexlib_include_DIR}/ToolPlugin.hpp
  #
  ${flexlib_src_DIR}/CXXCTP_STD/CXXCTP_STD.cpp
  ${flexlib_include_DIR}/CXXCTP_STD/CXXCTP_STD.hpp
  #
  ${flexlib_src_DIR}/options/ctp/options.cpp
  ${flexlib_include_DIR}/options/ctp/options.hpp
  ${flexlib_include_DIR}/clangUtils.hpp
  ${flexlib_src_DIR}/clangUtils.cpp
  ${flexlib_include_DIR}/funcParser.hpp
  ${flexlib_src_DIR}/funcParser.cpp
  #${flexlib_src_DIR}/DispatchQueue.cpp
  ${flexlib_include_DIR}/DispatchQueue.hpp
  ${flexlib_include_DIR}/matchers/annotation_matcher.hpp
  ${flexlib_src_DIR}/matchers/annotation_matcher.cc
  ${flexlib_include_DIR}/annotation_match_handler.hpp
  ${flexlib_src_DIR}/annotation_match_handler.cc
  ${flexlib_include_DIR}/annotation_parser.hpp
  ${flexlib_src_DIR}/annotation_parser.cc
  ${flexlib_include_DIR}/parser_constants.hpp
  ${flexlib_src_DIR}/parser_constants.cc
  #
  ${flexlib_include_DIR}/clangPipeline.hpp
  #
  ${flexlib_src_DIR}/clangPipeline.cpp
  #
  ${flexlib_src_DIR}/ClingInterpreterModule.cpp
  ${flexlib_include_DIR}/ClingInterpreterModule.hpp
  ${flexlib_src_DIR}/utils.cpp
  ${flexlib_include_DIR}/utils.hpp
  ${flexlib_src_DIR}/inputThread.cpp
  ${flexlib_include_DIR}/inputThread.hpp
  ${flexlib_src_DIR}/reflect/ReflectionCache.cpp
  ${flexlib_include_DIR}/reflect/ReflectionCache.hpp
  ${flexlib_src_DIR}/reflect/ReflTypes.cpp
  ${flexlib_include_DIR}/reflect/ReflTypes.hpp
  ${flexlib_src_DIR}/reflect/TypeInfo.cpp
  ${flexlib_include_DIR}/reflect/TypeInfo.hpp
  ${flexlib_src_DIR}/reflect/ReflectAST.cpp
  ${flexlib_include_DIR}/reflect/ReflectAST.hpp
  ${flexlib_include_DIR}/reflect/ast_utils.hpp
  ${flexlib_include_DIR}/template_engine/CXTPL_AnyDict.hpp
  ${flexlib_src_DIR}/template_engine/CXTPL_AnyDict.cpp
  ${flexlib_include_DIR}/template_engine/I_Dict.hpp
  ${flexlib_src_DIR}/template_engine/I_Dict.cpp
  ${flexlib_include_DIR}/integrations/outcome/error_utils.hpp
  ${flexlib_include_DIR}/integrations/outcome/error_macros.hpp
  ${flexlib_src_DIR}/core/errors/errors_CodegenError.cpp
  ${flexlib_include_DIR}/core/errors/errors.hpp
  ${flexlib_src_DIR}/ctp_registry.cpp
  ${flexlib_include_DIR}/ctp_registry.hpp
)
