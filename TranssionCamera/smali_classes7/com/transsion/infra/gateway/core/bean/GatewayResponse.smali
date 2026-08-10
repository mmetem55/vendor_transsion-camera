.class public Lcom/transsion/infra/gateway/core/bean/GatewayResponse;
.super Ljava/lang/Object;
.source "GatewayResponse.java"


# instance fields
.field public errorCode:Ljava/lang/String;
    .annotation runtime Lcom/transsion/json/annotations/TserializedName;
        name = "error_code"
    .end annotation
.end field

.field public errorMsg:Ljava/lang/String;
    .annotation runtime Lcom/transsion/json/annotations/TserializedName;
        name = "error_msg"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
