.class public Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;
.super Ljava/lang/Object;
.source "HttpRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestInfo"
.end annotation


# instance fields
.field public bodySize:I

.field public bodydata:Ljava/lang/String;

.field public requestHead:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;

.field public userdata:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;->url:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;->requestHead:Ljava/util/HashMap;

    .line 18
    iput-object v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;->bodydata:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;->bodySize:I

    const-wide/16 v0, 0x0

    .line 20
    iput-wide v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;->userdata:J

    return-void
.end method
