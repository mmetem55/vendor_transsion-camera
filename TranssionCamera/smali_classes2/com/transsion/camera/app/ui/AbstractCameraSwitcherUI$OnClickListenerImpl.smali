.class Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;
.super Ljava/lang/Object;
.source "AbstractCameraSwitcherUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnClickListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$1;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;-><init>(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$100(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->access$100(Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;)Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/IAppUIListener$ICameraSwitchListener;->onCameraSwitch(Z)V

    .line 122
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/transsion/camera/adapter/CameraInfoUtil;->isCameraFacingFront(Ljava/lang/String;)Z

    move-result v0

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getCameraId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 125
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI$OnClickListenerImpl;->this$0:Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/AbstractCameraSwitcherUI;->startAnimation()V

    return-void
.end method
