.class public Lcom/zoho/livechat/android/ui/RequestLogDialog;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;
    }
.end annotation


# instance fields
.field private alertDialog:Lb/b/k/g;

.field private context:Landroid/content/Context;

.field private logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private logs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private parentLayout:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    new-instance v0, Lb/b/k/g$a;

    invoke-direct {v0, p1}, Lb/b/k/g$a;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_requestlog_positive_button:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1
    iget-object v1, v0, Lb/b/k/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->h:Ljava/lang/CharSequence;

    iput-object p2, v1, Landroidx/appcompat/app/AlertController$b;->i:Landroid/content/DialogInterface$OnClickListener;

    .line 2
    invoke-static {}, Lcom/zoho/livechat/android/ZohoLiveChat;->getApplicationManager()Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/zoho/livechat/android/operation/SalesIQApplicationManager;->getApplication()Landroid/app/Application;

    move-result-object p1

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_requestlog_negative_button:I

    invoke-virtual {p1, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lb/b/k/g$a;->d(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lb/b/k/g$a;

    invoke-virtual {v0}, Lb/b/k/g$a;->a()Lb/b/k/g;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/RequestLogDialog;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/RequestLogDialog;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logs:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public init(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logs:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    sget v1, Lcom/zoho/livechat/android/R$string;->livechat_requestlog_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb/b/k/g;->setTitle(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->parentLayout:Landroid/widget/RelativeLayout;

    new-instance p1, Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 1
    invoke-direct {p1, v0, v1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;

    invoke-direct {v0, p0, v1}, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;-><init>(Lcom/zoho/livechat/android/ui/RequestLogDialog;Lcom/zoho/livechat/android/ui/RequestLogDialog$1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->parentLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->logRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/high16 v1, 0x41c00000    # 24.0f

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v3}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v3

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v4

    invoke-static {v1}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v1

    invoke-virtual {p1, v2, v3, v4, v1}, Landroid/view/ViewGroup;->setPadding(IIII)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->parentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    const/4 v1, -0x2

    invoke-virtual {p1, v1}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    iget-object v2, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setTextColor(I)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    invoke-virtual {p1, v1}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    invoke-virtual {p1, v0}, Lb/b/k/g;->d(I)Landroid/widget/Button;

    move-result-object p1

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public showDialog()V
    .locals 6

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    iget-object v1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->parentLayout:Landroid/widget/RelativeLayout;

    .line 1
    iget-object v2, v0, Lb/b/k/g;->e:Landroidx/appcompat/app/AlertController;

    .line 2
    iput-object v1, v2, Landroidx/appcompat/app/AlertController;->h:Landroid/view/View;

    const/4 v1, 0x0

    iput v1, v2, Landroidx/appcompat/app/AlertController;->i:I

    iput-boolean v1, v2, Landroidx/appcompat/app/AlertController;->n:Z

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog;->alertDialog:Lb/b/k/g;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceWidth()I

    move-result v1

    const/high16 v2, 0x42700000    # 60.0f

    invoke-static {v2}, Lcom/zoho/livechat/android/config/DeviceConfig;->dpToPx(F)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getDeviceHeight()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method
