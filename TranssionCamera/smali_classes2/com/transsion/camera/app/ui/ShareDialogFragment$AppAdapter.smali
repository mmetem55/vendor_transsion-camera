.class Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ShareDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/ShareDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private IS_DARK_MODE:Z

.field private final mActivity:Landroid/content/Context;

.field private mAppInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$SX3AevKkWzIPX8-Vvz4YIfpeBik(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 134
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 131
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mAppInfoList:Ljava/util/List;

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mActivity:Landroid/content/Context;

    .line 136
    iput-boolean p2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->IS_DARK_MODE:Z

    return-void
.end method

.method static synthetic access$202(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mAppInfoList:Ljava/util/List;

    return-object p1
.end method

.method private synthetic lambda$onBindViewHolder$0(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;Landroid/view/View;)V
    .locals 3

    .line 159
    iget-object p2, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mUri:Landroid/net/Uri;

    if-eqz p2, :cond_0

    .line 160
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 161
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->getLauncherName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    .line 162
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mActivity:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 165
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 166
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mUri:Landroid/net/Uri;

    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 168
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mActivity:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 169
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    const/16 p2, 0xf

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$000(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setClickIconId(ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 128
    check-cast p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;I)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mAppInfoList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;

    .line 156
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;->title:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$000(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;->icon:Landroid/widget/ImageView;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;->access$100(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    iget-object p1, p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;Lcom/transsion/camera/app/ui/ShareDialogFragment$AppInfo;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;
    .locals 1

    .line 143
    iget-boolean p0, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->IS_DARK_MODE:Z

    const/4 p2, 0x0

    if-eqz p0, :cond_0

    .line 144
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c01ce

    .line 145
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const v0, 0x7f0c01cd

    .line 148
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 150
    :goto_0
    new-instance p1, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;

    invoke-direct {p1, p0}, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppHolder;-><init>(Landroid/view/View;)V

    return-object p1
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ShareDialogFragment$AppAdapter;->mUri:Landroid/net/Uri;

    return-void
.end method
