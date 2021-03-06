﻿#pragma once

#include "flexlib/funcParser.hpp"

#include <string>
#include <vector>

#include <clang/AST/Decl.h>
#include <clang/AST/DeclBase.h>
#include <clang/AST/DeclCXX.h>
#include <clang/AST/ASTContext.h>
#include <clang/Rewrite/Core/Rewriter.h>
#include <clang/ASTMatchers/ASTMatchFinder.h>

#if 0
struct ReflectedEnumItems {
  std::string name;
  int64_t value;
};

extern std::vector<flexlib::parsed_func> split_to_funcs(
  std::string const& inStr);

clang::SourceLocation
findPureInsertionPoint(clang::CXXMethodDecl *MethodDecl,
                   const clang::ASTContext &Context);

clang::SourceRange
findFuncBodyRange(clang::CXXMethodDecl *MethodDecl,
                   const clang::ASTContext &Context);

clang::SourceLocation
findVirtualInsertionPoint(clang::CXXMethodDecl *MethodDecl,
                   const clang::ASTContext &Context);
clang::SourceLocation
findCXXRecordNameEndPoint(clang::CXXRecordDecl const *decl,
                   const clang::ASTContext &Context);

std::string wrapLocalInclude(const std::string& inStr);

std::string get_func_arg(
  const std::vector<flexlib::parsed_func>& args
  , const std::string& funcName, const int index);

flexlib::args get_func_args(
  const std::vector<flexlib::parsed_func>& args
  , const std::string& funcName);

void prepareTplArg(std::string& in);

/**
  * \brief callback that will be called then parser
  * found custom attribute.
  * \arg return value (const char*)
  *      used to replace original code, if needed.
  * \arg func_with_args
  *      currently executed function from list `all_funcs_with_args`
  *      (see below)
  * \arg clang::ast_matchers::MatchFinder::MatchResult
  *      see https://xinhuang.github.io/posts/2015-02-08-clang-tutorial-the-ast-matcher.html
  * \arg clang::Rewriter
  *      see https://devblogs.microsoft.com/cppblog/exploring-clang-tooling-part-3-rewriting-code-with-clang-tidy/
  * \arg clang::Decl
  *      found by MatchFinder,
  *      see https://devblogs.microsoft.com/cppblog/exploring-clang-tooling-part-2-examining-the-clang-ast-with-clang-query/
  * \arg std::vector<parsed_func>
  *      all arguments extracted from attribute.
  *      Example: $apply(interface, foo_with_args(1, "2")) becomes two `parsed_func` - `interface` and `foo_with_args`.
**/
struct callback_args {
  const flexlib::parsed_func& func_with_args;
  const clang::ast_matchers::MatchFinder::MatchResult& matchResult;
  clang::Rewriter& rewriter;
  const clang::Decl* decl = nullptr;
  const std::vector<flexlib::parsed_func>& all_func_with_args;
};

struct callback_result {
  ///\brief may be used to replace orginal code
  const char* replacer = nullptr;
};
#endif
