#ifdef DEBUG
#define KBLog(...) NSLog(__VA_ARGS__)
#else
#define KBLog(...)
#endif

#define KBColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define KBGlobalBg KBColor(230, 230, 230)