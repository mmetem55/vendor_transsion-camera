.class Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;
.super Ljava/lang/Object;
.source "RecordStateMonitor.java"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 38
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_record_state"

    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 42
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$002(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)Z

    .line 52
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;->onRecordStop()V

    goto :goto_0

    .line 44
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$002(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)Z

    .line 45
    iget-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p1}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 46
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;->this$0:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;

    invoke-static {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;->onRecordStart()V

    :cond_2
    :goto_0
    return-void
.end method
