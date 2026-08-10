.class final enum Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;
.super Ljava/lang/Enum;
.source "BrightnessValueMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Facing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

.field public static final enum BACK:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

.field public static final enum FRONT:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

.field public static final enum UNKNOWN:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 204
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->UNKNOWN:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    .line 205
    new-instance v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    const-string v3, "BACK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->BACK:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    .line 206
    new-instance v3, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    const-string v5, "FRONT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->FRONT:Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 203
    sput-object v5, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->$VALUES:[Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;
    .locals 1

    .line 203
    const-class v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;
    .locals 1

    .line 203
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->$VALUES:[Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/setting/flashfacade/monitor/BrightnessValueMonitor$FacingTracker$Facing;

    return-object v0
.end method
