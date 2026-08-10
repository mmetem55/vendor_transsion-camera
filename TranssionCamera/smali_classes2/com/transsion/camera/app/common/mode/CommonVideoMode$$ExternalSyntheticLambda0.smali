.class public final synthetic Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/transsion/camera/app/common/IModuleTransfer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/mode/CommonVideoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    return-void
.end method


# virtual methods
.method public final onTransfer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/common/mode/CommonVideoMode$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/common/mode/CommonVideoMode;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/mode/CommonVideoMode;->updateLowLight(Z)V

    return-void
.end method
