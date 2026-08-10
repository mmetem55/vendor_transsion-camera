.class public Lcom/transsion/widgetslib/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final APPCOMPAT:I = 0x1

.field public static final ATLEAT_Q:Z

.field public static final ATLEAT_R:Z

.field private static final DIALOG_WINDOW_ERROR_WIDTH:I = 0x46

.field private static final GESTURE_ON:I = 0x2

.field public static final HIOS:I = 0x0

.field public static IS_4D_VIBRATE_SUPPORT:Z = false

.field public static final ITE:I = 0x2

.field private static final KEY_FLIP:Ljava/lang/String; = "ro.os_flip_screen_support"

.field private static final KEY_FOLD:Ljava/lang/String; = "ro.os_foldable_screen_support"

.field private static final KEY_OLED:Ljava/lang/String; = "ro.transsion.lcd.type"

.field public static final METERIAL:I = 0x0

.field private static OLED_SCREEN_STATE:I = 0x0

.field private static final OLED_SCREEN_STATE_NO:I = 0x0

.field private static final OLED_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final OLED_SCREEN_STATE_YES:I = 0x1

.field public static OS_FOLD_FLIP_SCREEN_SUPPORT:Z = false

.field private static final OS_RANDOM_COLORS:[I

.field public static OS_TYPE:Ljava/lang/String; = null

.field public static final PLATFORM_MTK:I = 0x1

.field public static final PLATFORM_SPRD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "widgetslib.Utils"

.field private static final VALUE_FLIP:Ljava/lang/String; = "1"

.field private static final VALUE_FOLD:Ljava/lang/String; = "1"

.field private static final VALUE_OLED:Ljava/lang/String; = "1"

.field private static WATERFALL_SCREEN_STATE:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO:I = 0x0

.field private static final WATERFALL_SCREEN_STATE_NO_INIT:I = -0x1

.field private static final WATERFALL_SCREEN_STATE_YES:I = 0x1

.field public static final XOS:I = 0x1

.field public static final mAddIcon:[I

.field public static final mBackIcon:[I

.field public static final mCloseIcon:[I

.field public static final mEditIcon:[I

.field public static final mMoreIcon:[I

.field public static final mOsType:[Ljava/lang/String;

.field public static final mSaveIcon:[I

.field public static final mSearchIcon:[I

.field public static final mSettingsIcon:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 63
    sget-object v0, Lcom/transsion/widgetscore/utils/CoreUtils;->mOsType:[Ljava/lang/String;

    sput-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 64
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_hios:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_xos:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_back_itel:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mBackIcon:[I

    new-array v1, v0, [I

    .line 65
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_close_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mCloseIcon:[I

    new-array v1, v0, [I

    .line 66
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_save_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mSaveIcon:[I

    new-array v1, v0, [I

    .line 67
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_search_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mSearchIcon:[I

    new-array v1, v0, [I

    .line 68
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_edit_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mEditIcon:[I

    new-array v1, v0, [I

    .line 69
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_more_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mMoreIcon:[I

    new-array v1, v0, [I

    .line 70
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_settings_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mSettingsIcon:[I

    new-array v1, v0, [I

    .line 71
    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_hios:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_xos:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$drawable;->os_ic_add_itel:I

    aput v2, v1, v5

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->mAddIcon:[I

    const/4 v1, -0x1

    .line 73
    sput v1, Lcom/transsion/widgetslib/util/Utils;->WATERFALL_SCREEN_STATE:I

    .line 79
    sput v1, Lcom/transsion/widgetslib/util/Utils;->OLED_SCREEN_STATE:I

    const-string v1, "ro.os_flip_screen_support"

    .line 90
    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/transsion/widgetslib/util/Utils;->OS_FOLD_FLIP_SCREEN_SUPPORT:Z

    const-string v1, "ro.tranos.type"

    .line 93
    invoke-static {v1}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    .line 94
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_Q:Z

    .line 95
    sput-boolean v4, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_R:Z

    .line 496
    sget-boolean v1, Lcom/transsion/widgetscore/utils/CoreUtils;->IS_4D_VIBRATE_SUPPORT:Z

    sput-boolean v1, Lcom/transsion/widgetslib/util/Utils;->IS_4D_VIBRATE_SUPPORT:Z

    const/16 v1, 0x10

    new-array v1, v1, [I

    .line 724
    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_0:I

    aput v2, v1, v3

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_1:I

    aput v2, v1, v4

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_2:I

    aput v2, v1, v5

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_3:I

    aput v2, v1, v0

    const/4 v0, 0x4

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_4:I

    aput v2, v1, v0

    const/4 v0, 0x5

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_5:I

    aput v2, v1, v0

    const/4 v0, 0x6

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_6:I

    aput v2, v1, v0

    const/4 v0, 0x7

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_7:I

    aput v2, v1, v0

    const/16 v0, 0x8

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_8:I

    aput v2, v1, v0

    const/16 v0, 0x9

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_9:I

    aput v2, v1, v0

    const/16 v0, 0xa

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_10:I

    aput v2, v1, v0

    const/16 v0, 0xb

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_11:I

    aput v2, v1, v0

    const/16 v0, 0xc

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_12:I

    aput v2, v1, v0

    const/16 v0, 0xd

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_13:I

    aput v2, v1, v0

    const/16 v0, 0xe

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_14:I

    aput v2, v1, v0

    const/16 v0, 0xf

    sget v2, Lcom/transsion/widgetslib/R$color;->os_random_colors_15:I

    aput v2, v1, v0

    sput-object v1, Lcom/transsion/widgetslib/util/Utils;->OS_RANDOM_COLORS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;
    .locals 0

    .line 469
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->bitmap2InputStream(Landroid/graphics/Bitmap;)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 0

    .line 473
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    return p0
.end method

.method public static compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 453
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->compressBitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createActivityRule(Ljava/lang/String;Ljava/lang/String;)Landroidx/window/embedding/ActivityRule;
    .locals 2

    .line 608
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 609
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    new-instance p0, Landroidx/window/embedding/ActivityFilter;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Landroidx/window/embedding/ActivityFilter;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 612
    new-instance p0, Landroidx/window/embedding/ActivityRule;

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Landroidx/window/embedding/ActivityRule;-><init>(Ljava/util/Set;Z)V

    return-object p0
.end method

.method public static dp2px(Landroid/content/Context;I)I
    .locals 0

    .line 519
    invoke-static {p0, p1}, Lcom/transsion/widgetscore/utils/CoreUtils;->dp2px(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 465
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2Bitmap(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;
    .locals 0

    .line 461
    invoke-static {p0, p1, p2}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawable2InputStream(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Ljava/io/InputStream;

    move-result-object p0

    return-object p0
.end method

.method public static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 0

    .line 552
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static getAppTheme(III)I
    .locals 3

    .line 153
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return p0

    .line 158
    :cond_0
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p2

    :cond_1
    const/4 p2, 0x1

    .line 160
    aget-object p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    return p1

    :cond_2
    return p0
.end method

.method private static getAppTheme(ZI)I
    .locals 3

    .line 100
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    return p0

    .line 106
    :cond_0
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    .line 109
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios:I

    goto :goto_0

    .line 111
    :cond_1
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_hios:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 115
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_hios_NoActionBar:I

    goto :goto_0

    .line 117
    :cond_3
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_hios_NoActionBar:I

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    .line 120
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p0, :cond_6

    if-nez p1, :cond_5

    .line 123
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_xos:I

    goto :goto_0

    .line 125
    :cond_5
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_xos:I

    goto :goto_0

    :cond_6
    if-nez p1, :cond_7

    .line 129
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_xos_NoActionBar:I

    goto :goto_0

    .line 131
    :cond_7
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_xos_NoActionBar:I

    goto :goto_0

    :cond_8
    if-eqz p0, :cond_a

    if-nez p1, :cond_9

    .line 137
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_itel:I

    goto :goto_0

    .line 139
    :cond_9
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_itel:I

    goto :goto_0

    :cond_a
    if-nez p1, :cond_b

    .line 143
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_Material_itel_NoActionBar:I

    goto :goto_0

    .line 145
    :cond_b
    sget p0, Lcom/transsion/widgetslib/R$style;->OS_Theme_AppCompat_itel_NoActionBar:I

    :goto_0
    return p0
.end method

.method public static getAttrColor(IILandroid/content/Context;)I
    .locals 3

    .line 543
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 544
    invoke-virtual {p2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 545
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    return p1
.end method

.method public static getAttrColor(Landroid/content/Context;II)I
    .locals 0

    .line 538
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-static {p1, p2, p0}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(IILandroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getHardwareType()I
    .locals 1

    .line 503
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->getHardwareType()I

    move-result v0

    return v0
.end method

.method public static getNavigationBarHeight(Landroid/content/res/Resources;)I
    .locals 3

    const-string v0, "navigation_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 308
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 309
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getOsBgPrimary(Landroid/content/Context;)I
    .locals 4

    .line 689
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 690
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/transsion/widgetslib/R$attr;->OsBgPrimary:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getOsPlatformBasicColor(Landroid/content/Context;)I
    .locals 2

    .line 533
    sget v0, Lcom/transsion/widgetslib/R$attr;->os_platform_basic_color:I

    sget v1, Lcom/transsion/widgetslib/R$color;->os_platform_basic_color_hios:I

    invoke-static {p0, v0, v1}, Lcom/transsion/widgetslib/util/Utils;->getAttrColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getOsType()Ljava/lang/String;
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 329
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 330
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "ro.tranos.type"

    aput-object v3, v2, v5

    .line 331
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getPlatformIcon([I)I
    .locals 4

    .line 315
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 317
    aget p0, p0, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    .line 318
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    aget p0, p0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 321
    aget p0, p0, v0

    :goto_0
    return p0
.end method

.method public static getRandomColor()I
    .locals 1

    .line 743
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->OS_RANDOM_COLORS:[I

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getRandomColor([I)I

    move-result v0

    return v0
.end method

.method public static getRandomColor([I)I
    .locals 2

    if-eqz p0, :cond_0

    .line 747
    array-length v0, p0

    if-eqz v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    array-length v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 751
    aget p0, p0, v0

    return p0

    .line 748
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Params error."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRealScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 637
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 638
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 639
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 640
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getRealScreenWidth(Landroid/content/Context;)I
    .locals 2

    .line 629
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 630
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 631
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 632
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return p0
.end method

.method public static getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 449
    invoke-static {p0, p1}, Lcom/transsion/widgetscore/utils/CoreUtils;->getReflectFieldInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 2

    .line 644
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 645
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 646
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 647
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    .line 652
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    .line 653
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 654
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static getSystemProperties(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 499
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static inputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 0

    .line 457
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->inputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p0

    return-object p0
.end method

.method public static is24HourFormat(Landroid/content/Context;)Z
    .locals 0

    .line 477
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isActivityEmbedded(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 566
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 567
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p0

    move v0, p0

    goto :goto_0

    .line 568
    :cond_0
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 569
    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 570
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 571
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 572
    :cond_1
    instance-of p0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p0, :cond_2

    .line 573
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {p0, v1}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 581
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static isBoldTextAdjustment(Landroid/content/Context;)Z
    .locals 0

    .line 511
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isBoldTextAdjustment(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDarkMode(Landroid/content/Context;)Z
    .locals 0

    .line 515
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isDarkMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceSupportFold()Z
    .locals 1

    .line 560
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/window/embedding/SplitController;->isSplitSupported()Z

    move-result v0

    return v0
.end method

.method public static isFold()Z
    .locals 2

    const-string v0, "ro.os_foldable_screen_support"

    .line 698
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFoldInnerScreen(Landroid/content/Context;)Z
    .locals 2

    .line 596
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 597
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 598
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 599
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    .line 601
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p0, v0

    .line 602
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isDeviceSupportFold()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFoldInnerScreenExpendState(Landroid/content/Context;)Z
    .locals 1

    .line 592
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isFoldInnerScreenSplitState(Landroid/content/Context;)Z
    .locals 1

    .line 588
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isGestureNavigationBarOn(Landroid/content/Context;)Z
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "navigation_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isInMultiWindowMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    .line 663
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 664
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p0

    move v0, p0

    goto :goto_0

    .line 665
    :cond_0
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 666
    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 667
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 668
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    goto :goto_0

    .line 669
    :cond_1
    instance-of p0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p0, :cond_2

    .line 670
    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 678
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :cond_2
    :goto_0
    return v0
.end method

.method public static isInternalPhoneType()Z
    .locals 1

    .line 685
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->getOsType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isOLED()Z
    .locals 1

    .line 493
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isOLED()Z

    move-result v0

    return v0
.end method

.method public static isRtl()Z
    .locals 1

    .line 481
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtl()Z

    move-result v0

    return v0
.end method

.method public static isRtlDigit()Z
    .locals 1

    .line 485
    invoke-static {}, Lcom/transsion/widgetscore/utils/CoreUtils;->isRtlDigit()Z

    move-result v0

    return v0
.end method

.method public static isScreenPortrait(Landroid/content/Context;)Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isScreenPortrait(Landroid/view/Window;)Z
    .locals 0

    .line 782
    invoke-virtual {p0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isThunderbackWindowMode(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    .line 795
    :try_start_0
    const-class v1, Landroid/content/res/Configuration;

    const-string v2, "isThunderbackWindow"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 796
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 799
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    return v0
.end method

.method public static isTopPositionInMultiWindow(Landroid/content/Context;Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 848
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 p1, 0x1

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 852
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isWaterfallScreen(Landroid/content/Context;)Z
    .locals 0

    .line 489
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isWindowNearByNavigationInMultiWindow(Landroid/content/Context;Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 863
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 868
    sget-boolean p1, Lcom/transsion/widgetslib/util/Utils;->ATLEAT_R:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, v2

    if-nez p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_2

    .line 880
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    return v1
.end method

.method public static isXOSorITEL()Z
    .locals 4

    .line 556
    sget-object v0, Lcom/transsion/widgetslib/util/Utils;->mOsType:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    sget-object v3, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    aget-object v0, v0, v2

    sget-object v2, Lcom/transsion/widgetslib/util/Utils;->OS_TYPE:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static measureAdapterMaxWidth(Landroid/content/Context;Landroid/widget/ListAdapter;)I
    .locals 5

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 836
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 837
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v4

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 838
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_max_width_fold_device:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 839
    :cond_1
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_foot_bar_popup_item_max_width:I

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_1
    if-lt p0, v2, :cond_2

    int-to-float p0, v2

    const/high16 v0, 0x41800000    # 16.0f

    .line 841
    invoke-static {v4, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    sub-float/2addr p0, v0

    float-to-int p0, p0

    .line 843
    :cond_2
    invoke-static {p1, p0}, Lcom/transsion/widgetslib/util/Utils;->measureAdapterMaxWidth(Landroid/widget/ListAdapter;I)I

    move-result p0

    return p0
.end method

.method public static measureAdapterMaxWidth(Landroid/widget/ListAdapter;I)I
    .locals 9

    const/4 v0, 0x0

    .line 809
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 810
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 811
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x0

    move v5, v0

    move v6, v5

    move-object v7, v4

    :goto_0
    if-ge v0, v3, :cond_3

    .line 813
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v8

    if-eq v8, v6, :cond_0

    move-object v7, v4

    move v6, v8

    .line 819
    :cond_0
    invoke-interface {p0, v0, v7, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 820
    invoke-virtual {v7, v1, v2}, Landroid/view/View;->measure(II)V

    .line 822
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lt v8, p1, :cond_1

    return p1

    :cond_1
    if-le v8, v5, :cond_2

    move v5, v8

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static measureTextHeight(Landroid/graphics/Paint;)F
    .locals 0

    .line 507
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->measureTextHeight(Landroid/graphics/Paint;)F

    move-result p0

    return p0
.end method

.method public static overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .locals 1

    .line 410
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/transsion/widgetslib/util/Utils$2;

    invoke-direct {v0, p2, p3, p1}, Lcom/transsion/widgetslib/util/Utils$2;-><init>(ZZLandroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public static px2dp(Landroid/content/Context;I)I
    .locals 0

    .line 523
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    div-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method public static setAppTheme(Landroid/content/Context;III)V
    .locals 1

    const/4 v0, 0x1

    .line 185
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/Utils;->setAppTheme(Landroid/content/Context;IIIZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZ)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 197
    invoke-static/range {v0 .. v5}, Lcom/transsion/widgetslib/util/Utils;->setAppTheme(Landroid/content/Context;IIIZZ)V

    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;IIIZZ)V
    .locals 1

    .line 209
    invoke-static {p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->getAppTheme(III)I

    move-result p1

    .line 210
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    .line 212
    instance-of p1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p1, :cond_2

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    .line 214
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p2

    .line 215
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isOLED()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 217
    sget p3, Lcom/transsion/widgetslib/R$style;->OSThemOled:I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    if-eqz p2, :cond_2

    .line 221
    sget p2, Lcom/transsion/widgetslib/R$style;->OsCurseSupport:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    if-eqz p4, :cond_1

    .line 223
    sget p2, Lcom/transsion/widgetslib/R$style;->actionbar_no_force_padding:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 225
    :cond_1
    invoke-static {p0, p1, p4}, Lcom/transsion/widgetslib/util/Utils;->setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V

    if-eqz p5, :cond_2

    .line 227
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->setWindowInset(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static setAppTheme(Landroid/content/Context;ZI)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/util/Utils;->getAppTheme(ZI)I

    move-result p1

    .line 175
    invoke-virtual {p0, p1}, Landroid/content/Context;->setTheme(I)V

    return-void
.end method

.method public static setBottomWindowFeatures(Landroid/view/Window;)V
    .locals 5

    .line 755
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x700

    .line 756
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 760
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    .line 763
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 764
    iget v2, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-nez v2, :cond_1

    or-int/lit8 v1, v1, 0x10

    goto :goto_1

    :cond_1
    and-int/lit8 v1, v1, -0x11

    .line 771
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 773
    invoke-virtual {p0, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 774
    invoke-virtual {p0, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 776
    invoke-virtual {p0, v4}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    .line 777
    invoke-virtual {p0, v4}, Landroid/view/Window;->setStatusBarContrastEnforced(Z)V

    return-void
.end method

.method private static setCustomStylesValues(Landroid/content/Context;Landroid/content/res/Resources$Theme;Z)V
    .locals 2

    .line 234
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_7

    .line 235
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 237
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-nez p2, :cond_0

    .line 257
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_0

    .line 259
    :cond_0
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_0_180_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 261
    :goto_0
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_1
    if-nez p2, :cond_3

    .line 249
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_2

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_RTL:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270:I

    :goto_1
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_2

    .line 251
    :cond_3
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_270_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 253
    :goto_2
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_270:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_5

    :cond_4
    if-nez p2, :cond_6

    .line 241
    invoke-static {}, Lcom/transsion/widgetslib/util/Utils;->isRtl()Z

    move-result p0

    if-eqz p0, :cond_5

    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_RTL:I

    goto :goto_3

    :cond_5
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90:I

    :goto_3
    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    goto :goto_4

    .line 243
    :cond_6
    sget p0, Lcom/transsion/widgetslib/R$style;->OSThemeCurve_90_no_force_padding:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 245
    :goto_4
    sget p0, Lcom/transsion/widgetslib/R$style;->popup_menu_curse_90:I

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_7
    :goto_5
    return-void
.end method

.method public static setDialogWidth(Landroid/app/Dialog;)V
    .locals 4

    .line 362
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 363
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 364
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 366
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/transsion/widgetslib/R$dimen;->os_dialog_fold_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 367
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    .line 369
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 370
    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenPortrait(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isScreenPortrait(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_1

    .line 371
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v3, 0x46

    if-gt v2, v3, :cond_4

    .line 373
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v0, v2}, Lcom/transsion/widgetslib/util/Utils;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 378
    :cond_4
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :goto_2
    return-void
.end method

.method public static setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 383
    invoke-static {p0, p1, p2, p3, v0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V

    return-void
.end method

.method public static setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZZ)V
    .locals 2

    .line 339
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isFoldInnerScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isActivityEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eqz p4, :cond_1

    .line 342
    sget p4, Lcom/transsion/widgetslib/R$drawable;->os_dialog_input_background_fold:I

    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    goto :goto_0

    .line 344
    :cond_1
    sget p4, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_fold:I

    invoke-static {p0, p4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 346
    :goto_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 347
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/transsion/widgetslib/R$style;->OS_Animation_Fold_Dialog:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 348
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz p4, :cond_3

    .line 351
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p4

    invoke-static {p0, p4}, Lcom/transsion/widgetslib/util/Utils;->setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V

    goto :goto_1

    .line 353
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    .line 356
    :goto_1
    invoke-static {p0, p1, p2, p3}, Lcom/transsion/widgetslib/util/Utils;->overrideDialogDecorViewTouchEvent(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    .line 357
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    sget p3, Lcom/transsion/widgetslib/R$string;->os_string_fold_dialog_title_verify:I

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setDialogWindowBackGroundNormal(Landroid/content/Context;Landroid/app/Dialog;ZZ)V
    .locals 1

    if-nez p1, :cond_0

    const-string p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround dialog null return"

    .line 388
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 391
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 393
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result p3

    .line 394
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 395
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 396
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_nav_gone_curve:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_nav_gone:I

    :goto_0
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-eqz p3, :cond_3

    .line 398
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_curve:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background:I

    :goto_1
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 400
    :goto_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x50

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    goto :goto_4

    :cond_4
    if-eqz p3, :cond_5

    .line 402
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_land_curve:I

    goto :goto_3

    :cond_5
    sget p2, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_land:I

    :goto_3
    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 403
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x11

    invoke-virtual {p2, p3}, Landroid/view/Window;->setGravity(I)V

    .line 405
    :goto_4
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setInputDialogWindowBackGround(Landroid/content/Context;Landroid/view/Window;)V
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "widgetslib.Utils"

    const-string p1, "setDialogWindowBackGround window null return"

    .line 428
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 433
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isWaterfallScreen(Landroid/content/Context;)Z

    move-result v1

    .line 434
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 435
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->isGestureNavigationBarOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    .line 436
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_nav_gone_curve:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_nav_gone:I

    :goto_0
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 438
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background_curve:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_input_dialog_background:I

    :goto_1
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_2
    const/16 v0, 0x50

    .line 440
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 442
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_land_curve:I

    goto :goto_3

    :cond_5
    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_dialog_background_land:I

    :goto_3
    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0x11

    .line 443
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 445
    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;I)V
    .locals 1

    const/4 v0, 0x0

    .line 616
    invoke-static {p0, p1, p2, v0}, Lcom/transsion/widgetslib/util/Utils;->setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;IZ)V

    return-void
.end method

.method public static setMenuItemSelected(Landroid/content/Context;Landroid/view/Menu;IZ)V
    .locals 1

    .line 620
    invoke-static {p0}, Lcom/transsion/widgetslib/util/Utils;->getOsPlatformBasicColor(Landroid/content/Context;)I

    move-result p0

    if-eqz p3, :cond_0

    .line 622
    sget p3, Lcom/transsion/widgetslib/R$drawable;->os_list_popup_item_selected2:I

    sget v0, Lcom/transsion/widgetslib/R$drawable;->os_list_popup_item_selected_space:I

    invoke-static {p1, p2, p0, p3, v0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;IIII)V

    goto :goto_0

    .line 624
    :cond_0
    invoke-static {p1, p2, p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->setMenuItemSelected(Landroid/view/Menu;II)V

    :goto_0
    return-void
.end method

.method public static setWindowInset(Landroid/content/Context;)V
    .locals 2

    .line 269
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 270
    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/transsion/widgetslib/util/Utils$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/util/Utils$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method public static showSoftInput(Landroid/widget/EditText;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 786
    invoke-virtual {p0}, Landroid/widget/EditText;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 788
    invoke-virtual {p0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    .line 789
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public static sp2px(I)I
    .locals 0

    .line 528
    invoke-static {p0}, Lcom/transsion/widgetscore/utils/CoreUtils;->sp2px(I)I

    move-result p0

    return p0
.end method

.method public static transformContext(Landroid/content/Context;)Landroid/app/Activity;
    .locals 3

    const/4 v0, 0x0

    .line 704
    :try_start_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 705
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 706
    :cond_0
    instance-of v1, p0, Landroid/view/ContextThemeWrapper;

    if-eqz v1, :cond_2

    .line 707
    move-object v1, p0

    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .line 708
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 709
    check-cast v1, Landroid/app/Activity;

    return-object v1

    .line 710
    :cond_1
    instance-of p0, p0, Landroid/view/ContextThemeWrapper;

    if-eqz p0, :cond_2

    .line 711
    check-cast v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p0

    .line 719
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    return-object v0
.end method
