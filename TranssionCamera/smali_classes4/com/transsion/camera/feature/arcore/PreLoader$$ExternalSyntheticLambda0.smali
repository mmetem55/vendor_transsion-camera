.class public final synthetic Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/transsion/camera/feature/arcore/PreLoader$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/arcore/PreLoader;->$r8$lambda$DC-HrA0ySq2_yb9Sk8Vbs-DLyCw(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
