.class Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "OSMultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->onPrepareDialogBuilder(Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 174
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$200(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$100(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$076(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;I)Z

    goto :goto_0

    .line 176
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p1}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$200(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)Ljava/util/Set;

    move-result-object p3

    iget-object p0, p0, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference$1;->this$0:Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;

    invoke-static {p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$100(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object p0

    aget-object p0, p0, p2

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p3, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;->access$076(Lcom/transsion/widgetslib/preference/OSMultiSelectListPreference;I)Z

    :goto_0
    return-void
.end method
