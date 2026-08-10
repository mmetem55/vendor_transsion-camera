.class public interface abstract Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider;
.super Ljava/lang/Object;
.source "HttpRequestProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;,
        Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;
    }
.end annotation


# virtual methods
.method public abstract getRequest(Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;)Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;
.end method

.method public abstract postRequest(Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$RequestInfo;)Lcom/bytedance/labcv/licenselibrary/HttpRequestProvider$ResponseInfo;
.end method
