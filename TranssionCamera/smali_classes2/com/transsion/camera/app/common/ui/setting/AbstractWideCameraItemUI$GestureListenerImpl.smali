.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AbstractWideCameraItemUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;-><init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onLongClickEvent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 211
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$402(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    :cond_0
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 217
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onSingleTapUp], mIsEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$500(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsZoomBarShow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 218
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$500(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$GestureListenerImpl;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onClickEvent()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
