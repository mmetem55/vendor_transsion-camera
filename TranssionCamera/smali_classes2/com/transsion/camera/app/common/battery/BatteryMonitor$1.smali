.class Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;
.super Landroid/content/BroadcastReceiver;
.source "BatteryMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/battery/BatteryMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 88
    invoke-static {}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryReceiver.onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "status"

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "level"

    const/4 v2, -0x1

    .line 96
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "scale"

    .line 97
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "temperature"

    .line 98
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v4, 0x0

    if-gtz p2, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v4

    :goto_0
    const/4 v5, 0x2

    if-eq p1, v5, :cond_5

    const/4 v6, 0x5

    if-ne p1, v6, :cond_2

    goto :goto_2

    :cond_2
    if-eq v1, v2, :cond_4

    if-ne v3, v2, :cond_3

    goto :goto_1

    :cond_3
    int-to-float p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr p1, v2

    int-to-float v2, v3

    div-float/2addr p1, v2

    const v2, 0x3e19b3d0    # 0.1501f

    cmpg-float p1, p1, v2

    if-gtz p1, :cond_5

    move v0, v5

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 122
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$100(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result p1

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$200(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result p1

    if-eq p1, p2, :cond_7

    .line 123
    :cond_6
    invoke-static {}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BatteryStatusChanged: level: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scale: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    .line 124
    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$100(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result v1

    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$300(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentTemperatureStatus = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    .line 125
    invoke-static {v1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$200(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " temperatureStatus = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p1, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1, v0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$102(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)I

    .line 127
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1, p2}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$202(Lcom/transsion/camera/app/common/battery/BatteryMonitor;I)I

    .line 128
    iget-object p1, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p1}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$400(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 129
    iget-object p0, p0, Lcom/transsion/camera/app/common/battery/BatteryMonitor$1;->this$0:Lcom/transsion/camera/app/common/battery/BatteryMonitor;

    invoke-static {p0}, Lcom/transsion/camera/app/common/battery/BatteryMonitor;->access$400(Lcom/transsion/camera/app/common/battery/BatteryMonitor;)Lcom/transsion/camera/app/common/battery/IBatteryListener;

    move-result-object p0

    invoke-interface {p0, v4, v0, p2}, Lcom/transsion/camera/app/common/battery/IBatteryListener;->onBatteryStatusChanged(ZII)V

    :cond_7
    return-void
.end method
