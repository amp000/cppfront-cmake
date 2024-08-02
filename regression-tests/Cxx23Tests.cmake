function(test_requires_cxx23)
    cmake_parse_arguments(PARSE_ARGV 0 ARG "" "OUTPUT_VARIABLE;TEST_NAME" "")

    _is_cxx23_test_list(cxx_23_tests)

    if (ARG_TEST_NAME IN_LIST cxx_23_tests)
        set(${ARG_OUTPUT_VARIABLE} 1 PARENT_SCOPE)
    else ()
        set(${ARG_OUTPUT_VARIABLE} 0 PARENT_SCOPE)
    endif ()
endfunction()

macro(_is_cxx23_test_list OUTPUT_VARIABLE)
    set(${OUTPUT_VARIABLE}
        pure2-assert-expected-not-null
        pure2-assert-optional-not-null
        pure2-assert-shared-ptr-not-null
        pure2-assert-unique-ptr-not-null
        pure2-bounds-safety-span
        pure2-break-continue
        pure2-bugfix-for-assign-expression-list
        pure2-bugfix-for-discard-precedence
        pure2-bugfix-for-empty-index
        pure2-bugfix-for-indexed-call
        pure2-bugfix-for-max-munch
        pure2-bugfix-for-memberwise-base-assignment
        pure2-bugfix-for-name-lookup-and-value-decoration
        pure2-bugfix-for-non-local-function-expression
        pure2-bugfix-for-non-local-initialization
        pure2-bugfix-for-optional-template-argument-list
        pure2-bugfix-for-requires-clause-in-forward-declaration
        pure2-bugfix-for-requires-clause-unbraced-function-initializer
        pure2-bugfix-for-template-argument
        pure2-bugfix-for-ufcs-arguments
        pure2-bugfix-for-ufcs-name-lookup
        pure2-bugfix-for-ufcs-noexcept
        pure2-bugfix-for-ufcs-sfinae
        pure2-bugfix-for-unbraced-function-expression
        pure2-bugfix-for-variable-template
        pure2-chained-comparisons
        pure2-concept-definition
        pure2-contracts
        pure2-defaulted-comparisons-and-final-types
        pure2-enum
        pure2-for-loop-range-with-lambda
        pure2-forward-return
        pure2-function-multiple-forward-arguments
        pure2-function-typeids
        pure2-hello
        pure2-initialization-safety-with-else-if
        pure2-inspect-expression-in-generic-function-multiple-types
        pure2-inspect-expression-with-as-in-generic-function
        pure2-inspect-fallback-with-variant-any-optional
        pure2-inspect-generic-void-empty-with-variant-any-optional
        pure2-interpolation
        pure2-intro-example-hello-2022
        pure2-intro-example-three-loops
        pure2-is-with-free-functions-predicate
        pure2-is-with-unnamed-predicates
        pure2-is-with-variable-and-value
        pure2-last-use
        pure2-look-up-parameter-across-unnamed-function
        pure2-main-args
        pure2-more-wildcards
        pure2-print
        pure2-range-operators
        pure2-raw-string-literal-and-interpolation
        pure2-regex_01_char_matcher
        pure2-regex_02_ranges
        pure2-regex_03_wildcard
        pure2-regex_04_start_end
        pure2-regex_05_classes
        pure2-regex_06_boundaries
        pure2-regex_07_short_classes
        pure2-regex_08_alternatives
        pure2-regex_09_groups
        pure2-regex_10_escapes
        pure2-regex_11_group_references
        pure2-regex_12_case_insensitive
        pure2-regex_13_possessive_modifier
        pure2-regex_14_multiline_modifier
        pure2-regex_15_group_modifiers
        pure2-regex_16_perl_syntax_modifier
        pure2-regex_17_comments
        pure2-regex_18_branch_reset
        pure2-regex_19_lookahead
        pure2-repeated-call
        pure2-requires-clauses
        pure2-return-tuple-operator
        pure2-statement-scope-parameters
        pure2-stdio
        pure2-stdio-with-raii
        pure2-synthesize-rightshift-and-rightshifteq
        pure2-template-parameter-lists
        pure2-trailing-comma-assert
        pure2-trailing-commas
        pure2-type-and-namespace-aliases
        pure2-type-constraints
        pure2-type-safety-1
        pure2-type-safety-2-with-inspect-expression
        pure2-types-basics
        pure2-types-down-upcast
        pure2-types-inheritance
        pure2-types-order-independence-and-nesting
        pure2-types-ordering-via-meta-functions
        pure2-types-smf-and-that-1-provide-everything
        pure2-types-smf-and-that-2-provide-mvconstruct-and-cpassign
        pure2-types-smf-and-that-3-provide-mvconstruct-and-mvassign
        pure2-types-smf-and-that-4-provide-cpassign-and-mvassign
        pure2-types-smf-and-that-5-provide-nothing-but-general-case
        pure2-types-that-parameters
        pure2-types-value-types-via-meta-functions
        pure2-ufcs-member-access-and-chaining
        pure2-union
        pure2-unsafe
        pure2-variadics
        pure2-various-string-literals
    )
endmacro()