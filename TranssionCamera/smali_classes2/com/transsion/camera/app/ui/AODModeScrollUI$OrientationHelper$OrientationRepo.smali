.class Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;
.super Ljava/lang/Object;
.source "AODModeScrollUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationRepo"
.end annotation


# instance fields
.field private final mOrientationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V
    .locals 2

    .line 570
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->this$1:Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    const/4 p0, 0x0

    .line 571
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation0;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x5a

    .line 572
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation90;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0xb4

    .line 573
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation180;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation180;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x10e

    .line 574
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation270;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$Orientation270;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;Lcom/transsion/camera/app/ui/AODModeScrollUI$1;)V
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;-><init>(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;I)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->getOrientation(I)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    move-result-object p0

    return-object p0
.end method

.method private getOrientation(I)Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    .line 579
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    .line 578
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AODModeScrollUI$OrientationHelper$AbstractOrientation;

    return-object p0
.end method
