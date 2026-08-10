.class public final Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;
.super Ljava/lang/Object;
.source "FaceBeauty.java"

# interfaces
.implements Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# static fields
.field private static final FACE_BEAUTY_IMPL_CLASS:Ljava/lang/String; = "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sSupport:Z


# instance fields
.field private mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-class v1, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

    .line 27
    invoke-static {v0}, Lcom/transsion/camera/utils/ReflectionUtils;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->sSupport:Z

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "com.transsion.camera.feature.facebeauty.FaceBeautyImpl"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    iput-object p1, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    return-void
.end method

.method public static algorithmMigrate()Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->sSupport:Z

    return v0
.end method

.method public static createCaptureClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .locals 2

    .line 44
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;-><init>(I)V

    return-object v0
.end method

.method public static createPreviewClient()Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;
    .locals 2

    .line 40
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public configStream(Landroid/view/Surface;II)Landroid/view/Surface;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 122
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 125
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->configStream(Landroid/view/Surface;II)Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 68
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 71
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->getVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public init()Z
    .locals 1

    .line 49
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 50
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 53
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->init()Z

    move-result p0

    return p0
.end method

.method public process([BIII)Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 113
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->process([BIII)Z

    move-result p0

    return p0
.end method

.method public setLevel(I)Z
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 95
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 98
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method public setLevels([I)Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 104
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 107
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setLevels([I)Z

    move-result p0

    return p0
.end method

.method public setMode(I)Z
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 86
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 89
    :cond_0
    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setMode(I)Z

    move-result p0

    return p0
.end method

.method public setParam(II)Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 77
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string p1, "mFaceBeautyImpl is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 80
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->setParam(II)Z

    move-result p0

    return p0
.end method

.method public unInit()Z
    .locals 1

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->mFaceBeautyImpl:Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;

    if-nez p0, :cond_0

    .line 59
    sget-object p0, Lcom/transsion/camera/app/common/algorithm/facebeauty/FaceBeauty;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "mFaceBeautyImpl is null"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 62
    :cond_0
    invoke-interface {p0}, Lcom/transsion/camera/app/common/algorithm/facebeauty/IFaceBeauty;->unInit()Z

    move-result p0

    return p0
.end method
