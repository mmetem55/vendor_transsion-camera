.class final Lcom/transsion/ga/AthenaAnalytics$b;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/ga/AthenaAnalytics;->setDebug(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/transsion/ga/AthenaAnalytics$b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/transsion/ga/AthenaAnalytics$b;->a:Z

    invoke-static {v0}, Lcom/transsion/core/CoreUtil;->setDebug(Z)V

    .line 3
    sget-object v0, Lathena/k0;->a:Lcom/transsion/core/log/ObjectLogUtils;

    invoke-virtual {v0}, Lcom/transsion/core/log/ObjectLogUtils;->getBuilder()Lcom/transsion/core/log/ObjectLogUtils$Builder;

    move-result-object v0

    iget-boolean p0, p0, Lcom/transsion/ga/AthenaAnalytics$b;->a:Z

    invoke-virtual {v0, p0}, Lcom/transsion/core/log/ObjectLogUtils$Builder;->setLogSwitch(Z)Lcom/transsion/core/log/ObjectLogUtils$Builder;

    return-void
.end method
