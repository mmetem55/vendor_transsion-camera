.class public abstract Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;
.super Ljava/lang/Object;
.source "CameraAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/adapter/CameraAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CameraProxyCreator"
.end annotation


# instance fields
.field protected mCameraId:Ljava/lang/String;

.field final synthetic this$0:Lcom/transsion/camera/adapter/CameraAgent;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/adapter/CameraAgent;Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->this$0:Lcom/transsion/camera/adapter/CameraAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->openCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->releaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method static synthetic access$200(Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->closeCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private closeCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private openCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method

.method private releaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/adapter/CameraAgent$CameraProxyCreator;->doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V

    return-void
.end method


# virtual methods
.method abstract doCloseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method

.method abstract doOpenCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method

.method abstract doReleaseCamera(Lcom/transsion/camera/adapter/CameraAgent$Customer;)V
.end method
