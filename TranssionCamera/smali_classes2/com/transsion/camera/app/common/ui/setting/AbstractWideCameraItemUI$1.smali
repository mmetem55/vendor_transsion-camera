.class Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;
.super Ljava/lang/Object;
.source "AbstractWideCameraItemUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->setupEntryView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 242
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 244
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 p1, 0x3

    if-eq v1, p1, :cond_3

    goto/16 :goto_0

    .line 260
    :cond_0
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$900(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v1

    sub-float v1, p1, v1

    .line 261
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1000(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v2

    sub-float v2, v0, v2

    .line 262
    iget-object v4, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v4}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v4

    if-nez v4, :cond_1

    mul-float v4, v1, v1

    mul-float/2addr v2, v2

    add-float/2addr v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_1

    .line 263
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->onLongClickEvent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 264
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$402(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 267
    :cond_1
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$400(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 268
    iget-object v2, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v2, v2, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v2, :cond_2

    .line 269
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mLastScrollX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v5}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$900(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " currentX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " dx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1100(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 271
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v3}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 275
    :cond_2
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$902(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 276
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1002(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    goto :goto_0

    .line 253
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$402(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 254
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    iget-object v0, p1, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_5

    .line 255
    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1100(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Landroid/view/MotionEvent;)V

    .line 256
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    goto :goto_0

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$402(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 247
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, v2}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;Z)Z

    .line 248
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {v1, p1}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$902(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 249
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1002(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;F)F

    .line 280
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;->access$1200(Lcom/transsion/camera/app/common/ui/setting/AbstractWideCameraItemUI;)Landroid/view/GestureDetector;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v3
.end method
