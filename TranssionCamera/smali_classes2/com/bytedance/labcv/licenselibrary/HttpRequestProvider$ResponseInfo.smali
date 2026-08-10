.class public Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;
.super Ljava/lang/Object;
.source "HttpRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseInfo"
.end annotation


# instance fields
.field public bodySize:I

.field public bodydata:Ljava/lang/String;

.field public isSuc:Z

.field public responseHead:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public status_code:I

.field public userdata:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->isSuc:Z

    .line 34
    iput v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->status_code:I

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->responseHead:Ljava/util/HashMap;

    const-string v1, ""

    .line 36
    iput-object v1, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->bodydata:Ljava/lang/String;

    .line 37
    iput v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->bodySize:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;->userdata:J

    return-void
.end method
