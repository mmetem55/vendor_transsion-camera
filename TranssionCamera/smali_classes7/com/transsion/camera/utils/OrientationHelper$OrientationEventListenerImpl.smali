.class Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;
.super Landroid/view/OrientationEventListener;
.source "OrientationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/OrientationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OrientationEventListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/utils/OrientationHelper;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/OrientationHelper;Landroid/content/Context;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/utils/OrientationHelper;

    .line 62
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/transsion/camera/utils/OrientationHelper$OrientationEventListenerImpl;->this$0:Lcom/transsion/camera/utils/OrientationHelper;

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/OrientationHelper;->access$000(Lcom/transsion/camera/utils/OrientationHelper;I)V

    return-void
.end method
