#pragma once
#include <cassert>

#define _WHGFX_STRINGIFY_IMPL(a) #a
#define _WHGFX_CONCAT_IMPL(x, y) x##y

#define WHGFX_STRINGIFY(a) _WHGFX_STRINGIFY_IMPL(a)
#define WHGFX_CONCAT(x, y) _WHGFX_CONCAT_IMPL(x, y)

#define WHGFX_ASSERT(expr)		    assert(expr)
#define WHGFX_ASSERT_MSG(expr, msg) assert(expr && msg)
#define WHGFX_DEBUGBREAK()			__debugbreak()
#define WHGFX_UNREACHABLE()			__assume(false)
#define WHGFX_FORCEINLINE			__forceinline
#define WHGFX_NODISCARD				[[nodiscard]]
#define WHGFX_NORETURN				[[noreturn]]
#define WHGFX_DEPRECATED			[[deprecated]]
#define WHGFX_MAYBE_UNUSED			[[maybe_unused]]
#define WHGFX_DEPRECATED_MSG(msg)	[[deprecated(#msg)]]
#define WHGFX_DEBUGZONE_BEGIN		__pragma(optimize("", off))
#define WHGFX_DEBUGZONE_END			__pragma(optimize("", on))

#define WHGFX_NONCOPYABLE(ClassName)				\
		ClassName(ClassName const&)            = delete; \
		ClassName& operator=(ClassName const&) = delete;

#define WHGFX_NONMOVABLE(ClassName)					\
		ClassName(ClassName&&) noexcept            = delete; \
		ClassName& operator=(ClassName&&) noexcept = delete;

#define WHGFX_NONCOPYABLE_NONMOVABLE(ClassName)  \
		WHGFX_NONCOPYABLE(ClassName)			\
		WHGFX_NONMOVABLE(ClassName)

#define WHGFX_DEFAULT_COPYABLE(ClassName)		\
		ClassName(ClassName const&)			   = default; \
		ClassName& operator=(ClassName const&) = default;

#define WHGFX_DEFAULT_MOVABLE(ClassName)		\
		ClassName(ClassName&&) noexcept			   = default; \
		ClassName& operator=(ClassName&&) noexcept = default;

#define WHGFX_DEFAULT_COPYABLE_MOVABLE(ClassName) \
		WHGFX_DEFAULT_COPYABLE(ClassName)			\
		WHGFX_DEFAULT_MOVABLE(ClassName)