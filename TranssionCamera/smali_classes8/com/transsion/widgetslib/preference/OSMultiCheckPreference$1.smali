.class Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$1;
.super Ljava/lang/Object;
.source "OSMultiCheckPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;->access$000(Lcom/transsion/widgetslib/preference/OSMultiCheckPreference;)[Z

    move-result-object p0

    aput-boolean p3, p0, p2

    return-void
.end method
