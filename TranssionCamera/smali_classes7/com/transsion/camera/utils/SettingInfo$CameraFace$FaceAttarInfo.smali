.class public Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;
.super Ljava/lang/Object;
.source "SettingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/SettingInfo$CameraFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceAttarInfo"
.end annotation


# instance fields
.field private mAge:I

.field private mDx:F

.field private mDy:F

.field private mGender:I

.field private mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1912
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1913
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    .line 1925
    invoke-direct/range {v0 .. v5}, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 1916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1917
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    .line 1918
    iput p2, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    .line 1919
    iput p3, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mAge:I

    int-to-float p1, p4

    .line 1920
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDx:F

    int-to-float p1, p5

    .line 1921
    iput p1, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDy:F

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I
    .locals 0

    .line 1905
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mId:I

    return p0
.end method

.method static synthetic access$100(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I
    .locals 0

    .line 1905
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mGender:I

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)I
    .locals 0

    .line 1905
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mAge:I

    return p0
.end method

.method static synthetic access$300(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F
    .locals 0

    .line 1905
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDx:F

    return p0
.end method

.method static synthetic access$400(Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;)F
    .locals 0

    .line 1905
    iget p0, p0, Lcom/transsion/camera/utils/SettingInfo$CameraFace$FaceAttarInfo;->mDy:F

    return p0
.end method
