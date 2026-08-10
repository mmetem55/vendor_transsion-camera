.class public Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;
.super Lcom/transsion/camera/utils/debug/profiler/ProfileBase;
.source "PerformanceProfile.java"


# instance fields
.field private final mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private mWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/utils/debug/profiler/ILogWriter;Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p3}, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;-><init>(Ljava/lang/String;)V

    .line 29
    iput-object p2, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 30
    iput-object p1, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    return-void
.end method


# virtual methods
.method protected onMark(DDLjava/lang/String;)V
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    iget-object v1, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object v2, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mFormatter:Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

    const-string v5, "[MARK]"

    move-wide v3, p1

    move-wide v6, p3

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/utils/debug/profiler/ILogWriter;->write(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 35
    iget-object v0, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    iget-object v1, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mFormatter:Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

    const-wide/16 v2, 0x0

    const-string v4, "[BEGIN]"

    invoke-virtual {p0, v2, v3, v4}, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/transsion/camera/utils/debug/profiler/ILogWriter;->write(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method

.method protected onStop(DD)V
    .locals 1

    .line 50
    iget-object p3, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    iget-object p4, p0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;->mTag:Lcom/transsion/camera/utils/debug/Log$Tag;

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/profiler/ProfileBase;->mFormatter:Lcom/transsion/camera/utils/debug/profiler/LogFormatter;

    const-string v0, "[END]"

    invoke-virtual {p0, p1, p2, v0}, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->format(DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p4, p0}, Lcom/transsion/camera/utils/debug/profiler/ILogWriter;->write(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
