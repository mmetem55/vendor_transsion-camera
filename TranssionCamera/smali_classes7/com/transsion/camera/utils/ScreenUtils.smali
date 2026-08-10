.class public Lcom/transsion/camera/utils/ScreenUtils;
.super Ljava/lang/Object;
.source "ScreenUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static mCurrentBrightness:F

.field private static mInitialBrightness:F

.field private static sCurScreenSize:Landroid/util/Size;

.field private static sMainScreenSize:Landroid/util/Size;

.field private static sRealDensity:I

.field private static sRealScreenSize:Landroid/util/Size;

.field private static sScreenRatio:D


# direct methods
.method public static synthetic $r8$lambda$CU3pGjWdDkT938XKSihO765jBZM(Landroid/app/Activity;F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/ScreenUtils;->lambda$setScreenBrightness$0(Landroid/app/Activity;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/utils/ScreenUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-wide/16 v0, 0x0

    .line 43
    sput-wide v0, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    const/4 v0, 0x0

    .line 44
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    .line 45
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    .line 46
    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    const/high16 v0, 0x437f0000    # 255.0f

    .line 48
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->mInitialBrightness:F

    const/4 v0, 0x0

    .line 49
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->mCurrentBrightness:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enhanceScreenBrightness(Landroid/app/Activity;)V
    .locals 6

    .line 142
    invoke-static {}, Lcom/transsion/camera/utils/FeatureSupport;->isEnhanceScreenBrightnessSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    sget-object p0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[enhanceScreenBrightness] not support, maybe disabled by adb."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enhance_screen_brightness_support"

    invoke-static {p0, v1, v0}, Lcom/transsion/camera/utils/CameraUtil;->getBooleanResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "[enhanceScreenBrightness] error:"

    const-string v2, "screen_brightness"

    if-nez v0, :cond_1

    .line 148
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v3, "[enhanceScreenBrightness] enhance screen brightness not support"

    invoke-static {v0, v3}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 151
    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    .line 154
    sput p0, Lcom/transsion/camera/utils/ScreenUtils;->mInitialBrightness:F

    .line 155
    sput p0, Lcom/transsion/camera/utils/ScreenUtils;->mCurrentBrightness:F
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 162
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    sget-object p0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "In monkey scenario,the screen brightness is not adjusted."

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0xff

    .line 169
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    if-le v2, v0, :cond_3

    :try_start_2
    const-string v3, "ro.vendor.transsion.backlight.level"

    .line 174
    invoke-static {v3, v0}, Lcom/transsion/camera/utils/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 175
    div-int/lit16 v3, v3, 0x100

    div-int/2addr v2, v3
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_1

    :catch_2
    move-exception v3

    move v2, v0

    .line 178
    :goto_1
    sget-object v4, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    :cond_3
    :goto_2
    add-int/2addr v2, v0

    .line 180
    div-int/lit8 v2, v2, 0x2

    if-ne v0, v2, :cond_4

    add-int/lit8 v2, v2, -0x1

    :cond_4
    int-to-float v0, v2

    .line 191
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->mInitialBrightness:F

    .line 192
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->mCurrentBrightness:F

    .line 194
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/ScreenUtils;->setScreenBrightness(Landroid/app/Activity;F)V

    return-void
.end method

.method public static getCurrentBrightness()F
    .locals 1

    .line 99
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->mCurrentBrightness:F

    return v0
.end method

.method public static getCutoutHeight(Landroid/content/Context;)I
    .locals 3

    .line 234
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "is_notch_support"

    const-string v2, "bool"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 237
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 238
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getInitialBrightness()F
    .locals 1

    .line 95
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->mInitialBrightness:F

    return v0
.end method

.method public static getMainScreenSize()Landroid/util/Size;
    .locals 1

    .line 81
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public static getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 310
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 311
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 312
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;Z)I
    .locals 3

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "special_navigation_bar_height"

    .line 111
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    .line 114
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "navigation_bar_height"

    const-string v2, "dimen"

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 116
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getRealDisplayDensityDpi()I

    move-result v0

    .line 117
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    if-eqz v0, :cond_1

    .line 118
    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    if-eq v0, p0, :cond_1

    mul-int/2addr p1, p0

    .line 119
    div-int/2addr p1, v0

    .line 121
    :cond_1
    sget-object p0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "naviHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return p1
.end method

.method public static getRealDisplayDensityDpi()I
    .locals 7

    .line 283
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "android.view.WindowManagerGlobal"

    .line 285
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getWindowManagerService"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 286
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    .line 287
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 288
    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v4, "getInitialDisplayDensity"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 290
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v3, [Ljava/lang/Object;

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 293
    sput v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 296
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 299
    :cond_0
    :goto_0
    sget v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealDensity:I

    return v0
.end method

.method public static getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;
    .locals 2

    .line 303
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 304
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 305
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method public static getRealScreenSize(Landroid/content/Context;)Landroid/util/Size;
    .locals 2

    .line 67
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    return-object v0

    .line 70
    :cond_0
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 71
    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 72
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 73
    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, p0}, Landroid/util/Size;-><init>(II)V

    return-object v1
.end method

.method public static getScreenRatio()D
    .locals 2

    .line 91
    sget-wide v0, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    return-wide v0
.end method

.method public static getScreenSize()Landroid/util/Size;
    .locals 1

    .line 58
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    return-object v0
.end method

.method public static getWaterfallEdgeSize(Landroid/content/Context;)I
    .locals 2

    const-string v0, "waterfall_display_left_edge_size"

    const-string v1, "android"

    .line 253
    invoke-static {p0, v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->getDimen(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static isDualDisplayForSelfie(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "display"

    .line 419
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 420
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "isDualDisplayForSelfie"

    new-array v3, v1, [Ljava/lang/Class;

    .line 425
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    :try_start_1
    new-array v2, v1, [Ljava/lang/Object;

    .line 436
    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 442
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 443
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method invoke error2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception p0

    .line 438
    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 439
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "method invoke error1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    .line 447
    :cond_0
    :goto_0
    sget-object p0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDualDisplayForSelfie:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1

    :catch_2
    move-exception p0

    .line 427
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 428
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get method error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/debug/Log;->e(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return v1
.end method

.method public static isWcgSupported(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "window"

    .line 317
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 318
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->isWideColorGamut()Z

    move-result v0

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    .line 320
    sget-object v1, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWcgSupported isWideColorGamut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isScreenWideColorGamut: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$setScreenBrightness$0(Landroid/app/Activity;F)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 216
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public static setDefaultDisplay(Landroid/content/Context;)V
    .locals 8

    .line 257
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 258
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 259
    invoke-static {p0}, Lcom/transsion/camera/utils/ScreenUtils;->getRealMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 262
    invoke-static {}, Lcom/transsion/camera/utils/ScreenUtils;->getRealDisplayDensityDpi()I

    move-result v2

    int-to-float v3, v2

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x43200000    # 160.0f

    div-float/2addr v3, v4

    .line 265
    sget-object v4, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setDefaultDisplay dpi: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " --> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", realDensity: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 267
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v5, v2, :cond_0

    .line 268
    iget p0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p0, p0

    div-float/2addr p0, v3

    float-to-int p0, p0

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDefaultDisplay screenWidthDp: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 272
    iput v2, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 273
    iput p0, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 278
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    return-void
.end method

.method public static setMainScreenSize(II)V
    .locals 1

    .line 77
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sMainScreenSize:Landroid/util/Size;

    return-void
.end method

.method public static setRealScreenSize(II)V
    .locals 2

    .line 63
    new-instance v0, Landroid/util/Size;

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sRealScreenSize:Landroid/util/Size;

    return-void
.end method

.method public static setScreenBrightness(Landroid/app/Activity;F)V
    .locals 3

    .line 201
    sget-object v0, Lcom/transsion/camera/utils/ScreenUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current brightness is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 202
    sput p1, Lcom/transsion/camera/utils/ScreenUtils;->mCurrentBrightness:F

    const-string v0, "max_enhance_screen_brightness"

    .line 203
    invoke-static {p0, v0}, Lcom/transsion/camera/utils/CameraUtil;->getInteger(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xff

    if-lez v0, :cond_0

    .line 206
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v2, p1, v0

    if-gez v2, :cond_1

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_1
    int-to-float v0, v1

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    goto :goto_0

    .line 214
    :cond_2
    :goto_1
    new-instance v0, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/transsion/camera/utils/ScreenUtils$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;F)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setScreenRatio(II)V
    .locals 4

    int-to-double v0, p0

    int-to-double p0, p1

    .line 87
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    div-double/2addr v2, p0

    sput-wide v2, Lcom/transsion/camera/utils/ScreenUtils;->sScreenRatio:D

    return-void
.end method

.method public static setScreenSize(II)V
    .locals 1

    .line 54
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p0, p1}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Lcom/transsion/camera/utils/ScreenUtils;->sCurScreenSize:Landroid/util/Size;

    return-void
.end method
