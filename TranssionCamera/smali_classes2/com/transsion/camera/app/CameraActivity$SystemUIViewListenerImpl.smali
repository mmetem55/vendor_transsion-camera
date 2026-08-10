.class Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$ISystemUIViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUIViewListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/CameraActivity;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/CameraActivity;Lcom/transsion/camera/app/CameraActivity$1;)V
    .locals 0

    .line 602
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;-><init>(Lcom/transsion/camera/app/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onShowOrHideSystemUIView(Z)V
    .locals 1

    .line 606
    iget-object v0, p0, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-virtual {v0}, Lcom/transsion/camera/app/BaseCameraActivity;->hasVisibleFragment()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 611
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$100(Lcom/transsion/camera/app/CameraActivity;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/app/CameraActivity$SystemUIViewListenerImpl;->this$0:Lcom/transsion/camera/app/CameraActivity;

    invoke-static {p0}, Lcom/transsion/camera/app/CameraActivity;->access$200(Lcom/transsion/camera/app/CameraActivity;)V

    :goto_0
    return-void
.end method
