.class public Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters;
.super Ljava/lang/Object;
.source "ProfilerWriters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$DebugWriter;
    }
.end annotation


# static fields
.field private static sDebugWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$DebugWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$DebugWriter;-><init>(Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$1;)V

    sput-object v0, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters;->sDebugWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    return-void
.end method

.method public static getLogWriter()Lcom/transsion/camera/utils/debug/profiler/ILogWriter;
    .locals 1

    .line 26
    sget-object v0, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters;->sDebugWriter:Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    return-object v0
.end method
