.class public Lcom/transsion/camera/utils/debug/profiler/LogFormatter;
.super Ljava/lang/Object;
.source "LogFormatter.java"


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final format(DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "%.3f"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, p2

    aput-object p3, v0, v1

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    const/4 p1, 0x2

    aput-object p0, v0, p1

    const-string p0, "[%7sms]%7s %s"

    .line 27
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected final format(DLjava/lang/String;DLjava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v2, p2

    const-string p1, "%.3f"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    aput-object p3, v0, v1

    iget-object p0, p0, Lcom/transsion/camera/utils/debug/profiler/LogFormatter;->mName:Ljava/lang/String;

    const/4 p3, 0x2

    aput-object p0, v0, p3

    new-array p0, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    aput-object p3, p0, p2

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    aput-object p0, v0, p1

    const/4 p0, 0x4

    aput-object p6, v0, p0

    const-string p0, "[%7sms]%7s %s [%6sms] - %s"

    .line 35
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
