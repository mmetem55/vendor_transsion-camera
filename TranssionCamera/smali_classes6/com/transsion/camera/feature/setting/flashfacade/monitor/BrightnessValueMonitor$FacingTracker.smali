.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;
.super Ljava/lang/Object;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FacingTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;
    }
.end annotation


# instance fields
.field private mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

.field private mFacingChanged:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->UNKNOWN:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$1;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;Z)Z
    .locals 0

    .line 201
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->facingDetect(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;)Z
    .locals 0

    .line 201
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->facingChanged()Z

    move-result p0

    return p0
.end method

.method private facingChanged()Z
    .locals 0

    .line 230
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacingChanged:Z

    return p0
.end method

.method private facingDetect(Z)Z
    .locals 2

    const/4 v0, 0x0

    .line 214
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacingChanged:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 216
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->FRONT:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    if-eq p1, v1, :cond_1

    .line 217
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    .line 218
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacingChanged:Z

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->BACK:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    if-eq p1, v1, :cond_1

    .line 222
    iput-object v1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacing:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    .line 223
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacingChanged:Z

    .line 226
    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;->mFacingChanged:Z

    return p0
.end method
