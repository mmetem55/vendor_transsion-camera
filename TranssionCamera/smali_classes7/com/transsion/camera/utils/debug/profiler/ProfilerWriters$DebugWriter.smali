.class Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$DebugWriter;
.super Ljava/lang/Object;
.source "ProfilerWriters.java"

# interfaces
.implements Lcom/transsion/camera/utils/debug/profiler/ILogWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugWriter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$1;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/transsion/camera/utils/debug/profiler/ProfilerWriters$DebugWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-static {p1, p2}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
