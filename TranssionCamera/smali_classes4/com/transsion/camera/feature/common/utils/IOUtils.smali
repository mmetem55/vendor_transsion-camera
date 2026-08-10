.class public final Lcom/transsion/camera/feature/common/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "IOUtils"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/common/utils/IOUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeSilently(Ljava/io/Closeable;)V
    .locals 1

    if-nez p0, :cond_0

    .line 21
    sget-object p0, Lcom/transsion/camera/feature/common/utils/IOUtils;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v0, "[closeSilently] closeable is null ,return"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 25
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
