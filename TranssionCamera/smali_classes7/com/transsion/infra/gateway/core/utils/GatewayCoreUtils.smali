.class public Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;
.super Ljava/lang/Object;
.source "GatewayCoreUtils.java"


# static fields
.field public static L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;

    invoke-direct {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;-><init>()V

    const-string v1, "gateway_core"

    .line 6
    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->setGlobalTag(Ljava/lang/String;)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->setLogHeadSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->setBorderSwitch(Z)Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils$Builder;->create()Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    move-result-object v0

    sput-object v0, Lcom/transsion/infra/gateway/core/utils/GatewayCoreUtils;->L:Lcom/transsion/infra/gateway/core/utils/ObjectLogUtils;

    return-void
.end method
