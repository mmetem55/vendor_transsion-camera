.class Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;
.super Ljava/lang/Object;
.source "AODExitUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;
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
            "Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V
    .locals 2

    .line 253
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->this$1:Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 251
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    const/4 p0, 0x0

    .line 254
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation0;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation0;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x5a

    .line 255
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation90;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation90;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0xb4

    .line 256
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation180;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation180;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p0, 0x10e

    .line 257
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;

    invoke-direct {v1, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$Orientation270;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;Lcom/transsion/camera/app/ui/AODExitUI$1;)V
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;-><init>(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;I)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
    .locals 0

    .line 249
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->getOrientation(I)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    move-result-object p0

    return-object p0
.end method

.method private getOrientation(I)Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$OrientationRepo;->mOrientationMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/ui/AODExitUI$DragHelper$AbstractOrientation;

    return-object p0
.end method
