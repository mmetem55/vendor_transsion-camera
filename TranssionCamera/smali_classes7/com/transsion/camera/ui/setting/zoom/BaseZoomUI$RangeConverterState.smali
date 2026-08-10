.class abstract Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
.super Ljava/lang/Object;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "RangeConverterState"
.end annotation


# instance fields
.field protected final mMax:I

.field protected final mMin:I

.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V
    .locals 0

    .line 1132
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1133
    iput p2, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMin:I

    .line 1134
    iput p3, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMax:I

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .locals 1

    .line 1153
    iget v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMin:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMax:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method final enter(I)Z
    .locals 3

    .line 1138
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1300(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v0

    if-ne v0, p0, :cond_1

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object v1, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mCurrentCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->isIszZoomStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1100(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1400(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 1139
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-static {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->access$1302(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;)Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;

    .line 1140
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    iget-object v0, v0, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RangeConverterState enter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->onEnter(I)V

    const/4 p0, 0x1

    return p0
.end method

.method protected onEnter(I)V
    .locals 1

    .line 1148
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1149
    invoke-virtual {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->progressToValue(I)I

    move-result p0

    .line 1148
    invoke-virtual {v0, p0}, Lcom/transsion/camera/ui/setting/zoom/AbstractZoomUI;->setValueToSetting(I)V

    return-void
.end method

.method abstract progressToValue(I)I
.end method

.method abstract valueToProgress(I)I
.end method
