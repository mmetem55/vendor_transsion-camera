.class public Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;
.super Ljava/lang/Object;
.source "MotionDetect.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;


# static fields
.field private static final MOTION_DETECT_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.motiondetect.MotionDetectImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static final sSupport:Z


# instance fields
.field private final mMotionDetectImpl:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 18
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "com.transsion.camera.feature.motiondetect.MotionDetectImpl"

    .line 24
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->sSupport:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "com.transsion.camera.feature.motiondetect.MotionDetectImpl"

    .line 30
    invoke-static {v1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    iput-object v0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->mMotionDetectImpl:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    return-void
.end method

.method public static instance()Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;

    new-instance v1, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;

    invoke-direct {v1}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;-><init>()V

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetectWrapper;-><init>(Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;)V

    return-object v0
.end method

.method public static support()Z
    .locals 1

    .line 38
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->sSupport:Z

    return v0
.end method


# virtual methods
.method public detect([BIII)Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->mMotionDetectImpl:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    if-nez p0, :cond_0

    .line 53
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mMotionDetectImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 56
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->detect([BIII)Z

    move-result p0

    return p0
.end method

.method public init(III)Z
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->mMotionDetectImpl:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    if-nez p0, :cond_0

    .line 44
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mMotionDetectImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 47
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->init(III)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .locals 1

    .line 61
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->mMotionDetectImpl:Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;

    if-nez p0, :cond_0

    .line 62
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/motiondetect/MotionDetect;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mMotionDetectImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 65
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/motiondetect/IMotionDetect;->unInit()Z

    move-result p0

    return p0
.end method
