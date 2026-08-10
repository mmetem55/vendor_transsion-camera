.class Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$Holder;
.super Ljava/lang/Object;
.source "CameraThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static instance:Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;-><init>(Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$1;)V

    sput-object v0, Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager$Holder;->instance:Lcom/transsion/camera/feature/arcore/common/camera/CameraThreadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
