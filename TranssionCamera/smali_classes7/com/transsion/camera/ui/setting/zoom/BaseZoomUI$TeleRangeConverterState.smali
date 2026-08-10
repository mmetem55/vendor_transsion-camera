.class Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;
.super Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;
.source "BaseZoomUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TeleRangeConverterState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    .line 1260
    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;-><init>(Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;II)V

    return-void
.end method


# virtual methods
.method public currentRange(I)Z
    .locals 0

    .line 1265
    iget p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->mMin:I

    if-lt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onEnter(I)V
    .locals 0

    .line 1287
    invoke-super {p0, p1}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$RangeConverterState;->onEnter(I)V

    .line 1288
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI$TeleRangeConverterState;->this$0:Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/zoom/BaseZoomUI;->onTeleCameraSelected()V

    return-void
.end method

.method public progressToValue(I)I
    .locals 0

    .line 1270
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    .line 1271
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraDeviceZoom(I)I

    move-result p0

    .line 1272
    rem-int/lit8 p1, p0, 0xa

    if-eqz p1, :cond_0

    sub-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public valueToProgress(I)I
    .locals 0

    .line 1281
    invoke-static {}, Lcom/transsion/camera/app/common/CameraRepository;->getInstance()Lcom/transsion/camera/app/common/CameraRepository;

    move-result-object p0

    .line 1282
    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/CameraRepository;->getBackLongFocusCameraZoom(I)I

    move-result p0

    return p0
.end method
