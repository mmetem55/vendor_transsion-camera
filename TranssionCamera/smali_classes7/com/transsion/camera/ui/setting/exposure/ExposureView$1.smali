.class Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;
.super Ljava/lang/Object;
.source "ExposureView.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/exposure/ExposureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(I)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    if-ltz p1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v0

    if-le p1, v0, :cond_0

    goto/16 :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$600()I

    move-result v0

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$700()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_1

    return-void

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$802(Lcom/transsion/camera/ui/setting/exposure/ExposureView;I)I

    int-to-float p1, p1

    .line 217
    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v1

    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$700()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 218
    invoke-static {v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v1

    div-int/2addr v1, v0

    int-to-float v0, v1

    div-float/2addr p1, v0

    .line 219
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_2

    .line 220
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onProgressChanged] mLastProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ",sMaxEv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sMinEv = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$700()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",max = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$402(Lcom/transsion/camera/ui/setting/exposure/ExposureView;F)F

    .line 224
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result v0

    invoke-interface {p1, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onExposureViewChanged(F)V

    .line 225
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    .line 226
    invoke-static {p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$500(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/widget/ExposureSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/ui/setting/exposure/widget/BaseSeekBar;->backgroundVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 227
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public onStartTracking()V
    .locals 1

    .line 194
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$000(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView$ExposureViewChangedListener;->onTrackingTouchStatusChanged(Z)V

    return-void
.end method

.method public onStopTracking()V
    .locals 3

    .line 199
    invoke-static {}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTracking mEvChangeStartNotified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$200(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$300(Lcom/transsion/camera/ui/setting/exposure/ExposureView;Z)V

    .line 203
    :cond_0
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const/16 v1, 0xd

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/exposure/ExposureView$1;->this$0:Lcom/transsion/camera/ui/setting/exposure/ExposureView;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/exposure/ExposureView;->access$400(Lcom/transsion/camera/ui/setting/exposure/ExposureView;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    return-void
.end method
