.class Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;
.super Ljava/lang/Object;
.source "TopBarItemUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 191
    invoke-static {}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    const-string v1, "onClick"

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$400(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->optionBarFastDoubleClick()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$500(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$700(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$600(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$802(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    .line 197
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-virtual {v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->getKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 198
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$800(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 199
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$900(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1000(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1100(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object v1, v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mEntryView:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1000(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {v0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1200(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 208
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object v0, v0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz v0, :cond_3

    .line 209
    invoke-interface {v0}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 211
    :cond_3
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1200(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 213
    :cond_4
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p1}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1300(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p1

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p1

    .line 214
    array-length p1, p1

    const/4 v0, 0x2

    if-le p1, v0, :cond_5

    .line 215
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-static {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->access$1400(Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;)V

    goto :goto_0

    .line 217
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    iget-object p1, p1, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mPopupOptionsControl:Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;

    if-eqz p1, :cond_6

    .line 218
    invoke-interface {p1}, Lcom/transsion/camera/app/common/ui/setting/IPopupOptionControl;->dismissPopup()V

    .line 220
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI$1;->this$0:Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->setToNextIndex()V

    :cond_7
    :goto_0
    return-void
.end method
