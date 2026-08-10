.class public Lcom/transsion/camera/utils/debug/TraceUtil;
.super Ljava/lang/Object;
.source "TraceUtil.java"


# direct methods
.method public static begin(Ljava/lang/String;)V
    .locals 2

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PerformanceTrace] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    return-void
.end method

.method public static end()V
    .locals 0

    .line 12
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method
