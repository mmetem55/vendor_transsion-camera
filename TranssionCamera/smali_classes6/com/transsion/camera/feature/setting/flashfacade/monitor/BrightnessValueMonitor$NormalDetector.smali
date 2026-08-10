.class final Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;
.super Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NormalDetector"
.end annotation


# static fields
.field private static final CACHE_CAPACITY:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;Lcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V
    .locals 1

    .line 359
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$NormalDetector;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;

    const/4 v0, 0x5

    .line 360
    invoke-direct {p0, p1, v0, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;ILcom/transsion/camera/feature/setting/flashfacade/FlashConfig;)V

    return-void
.end method


# virtual methods
.method public detectImpl(I)Z
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mCache:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$Cache;->offer(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 369
    :cond_0
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->lowLightInternal()Z

    move-result p1

    .line 370
    invoke-virtual {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->highLightInternal()Z

    move-result v1

    .line 372
    iget-boolean v2, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 373
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    .line 378
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$BaseBrightnessDetector;->mLastLowLight:Z

    return p0
.end method
