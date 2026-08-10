.class public Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;
.super Ljava/lang/Object;
.source "PerformanceTracker.java"


# static fields
.field private static sTrackerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/transsion/camera/utils/debug/profiler/PerformanceTracker;->sTrackerMap:Ljava/util/HashMap;

    return-void
.end method

.method public static create(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)Lcom/transsion/camera/utils/debug/profiler/IPerformanceProfile;
    .locals 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;

    .line 35
    invoke-static {}, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters;->getLogWriter()Lcom/transsion/camera/utils/debug/profiler/ILogWriter;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/transsion/camera/utils/debug/profiler/PerformanceProfile;-><init>(Lcom/transsion/camera/utils/debug/profiler/ILogWriter;Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-object v0
.end method
