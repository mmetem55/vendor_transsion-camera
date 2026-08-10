.class public Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;
.super Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;
.source "ExposureSeekBar.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected buildBackground(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/BaseDraw;
    .locals 1

    .line 50
    new-instance p0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;

    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;

    invoke-direct {v0, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/background/SolidLineBackground$BackgroundInfo;)V

    return-object p0
.end method

.method protected buildThumbMoon(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
    .locals 2

    .line 63
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbMoonRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    return-object v0
.end method

.method protected buildThumbSun(Landroid/content/Context;Landroid/content/res/TypedArray;)Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbShape;
    .locals 2

    .line 56
    new-instance v0, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;

    new-instance v1, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;

    invoke-direct {v1, p1, p2}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    invoke-direct {v0, v1, p0}, Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich;-><init>(Lcom/transsion/camera/ui/setting/exposure/widget/thumb/ThumbSunRich$ThumbInfo;Lcom/transsion/camera/ui/setting/exposure/widget/IProgressTraits;)V

    return-object v0
.end method
