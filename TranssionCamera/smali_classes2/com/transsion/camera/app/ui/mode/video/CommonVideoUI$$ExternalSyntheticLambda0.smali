.class public final synthetic Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/mode/video/CommonVideoUI;->ringScreenLightUpdateUI()V

    return-void
.end method
