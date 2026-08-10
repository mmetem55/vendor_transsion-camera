.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;
.super Ljava/lang/Object;
.source "FeatureLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showResetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$4;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 532
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
