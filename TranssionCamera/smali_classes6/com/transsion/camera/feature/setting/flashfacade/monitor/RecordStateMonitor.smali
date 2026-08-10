.class public Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;
.super Ljava/lang/Object;
.source "RecordStateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

.field private final mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecording:Z

.field private mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$1;-><init>(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)V

    iput-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;)Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    return-object p0
.end method


# virtual methods
.method public init(Lcom/transsion/camera/app/common/setting/StatusMonitor;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v0, "key_record_state"

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->registerValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method

.method public recording()Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mRecording:Z

    return-void
.end method

.method public setRecordStateCallback(Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mCallback:Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor$IRecordStateCallback;

    return-void
.end method

.method public unInit()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mStatusMonitor:Lcom/transsion/camera/app/common/setting/StatusMonitor;

    if-eqz v0, :cond_0

    .line 78
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/flashfacade/monitor/RecordStateMonitor;->mListener:Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;

    const-string v1, "key_record_state"

    invoke-virtual {v0, v1, p0}, Lcom/transsion/camera/app/common/setting/StatusMonitor;->unregisterValueChangedListener(Ljava/lang/String;Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;)V

    :cond_0
    return-void
.end method
