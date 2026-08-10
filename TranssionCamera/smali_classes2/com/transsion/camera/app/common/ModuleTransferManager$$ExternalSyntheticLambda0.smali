.class public final synthetic Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;->f$0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-boolean p0, p0, Lcom/transsion/camera/app/common/ModuleTransferManager$$ExternalSyntheticLambda0;->f$0:Z

    check-cast p1, Lcom/transsion/camera/app/common/IModuleTransfer;

    invoke-static {p0, p1}, Lcom/transsion/camera/app/common/ModuleTransferManager;->$r8$lambda$2ikDq4fIlRVpKejNEQJaQa3biAA(ZLcom/transsion/camera/app/common/IModuleTransfer;)V

    return-void
.end method
