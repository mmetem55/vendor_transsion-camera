.class synthetic Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;
.super Ljava/lang/Object;
.source "FlashManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/FlashManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 225
    invoke-static {}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->values()[Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->$SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I

    :try_start_0
    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->NONE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->$SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I

    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->AE_STATE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/transsion/camera/feature/setting/flashfacade/FlashManager$1;->$SwitchMap$com$transsion$camera$feature$setting$flashfacade$monitor$IBrightnessMonitor$MonitorType:[I

    sget-object v1, Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;->BRIGHTNESS_VALUE:Lcom/transsion/camera/feature/setting/flashfacade/monitor/IBrightnessMonitor$MonitorType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
