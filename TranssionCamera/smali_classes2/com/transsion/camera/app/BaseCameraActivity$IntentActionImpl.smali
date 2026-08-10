.class Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;
.super Ljava/lang/Object;
.source "BaseCameraActivity.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IApp$IIntentAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/BaseCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntentActionImpl"
.end annotation


# instance fields
.field private final mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/transsion/camera/app/BaseCameraActivity;


# direct methods
.method public constructor <init>(Lcom/transsion/camera/app/BaseCameraActivity;Landroid/content/Intent;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1139
    iput-object p2, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public getSourceIntent()Landroid/content/Intent;
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public onResult(ILandroid/content/Intent;)V
    .locals 1

    .line 1147
    iget-object v0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1148
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public transferIntent(Landroid/content/Intent;I)V
    .locals 0

    .line 1154
    iget-object p0, p0, Lcom/transsion/camera/app/BaseCameraActivity$IntentActionImpl;->this$0:Lcom/transsion/camera/app/BaseCameraActivity;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
