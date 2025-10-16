.class public Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$e;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zoho/livechat/android/ui/RequestLogDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogViewAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$e<",
        "Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/RequestLogDialog;


# direct methods
.method private constructor <init>(Lcom/zoho/livechat/android/ui/RequestLogDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->this$0:Lcom/zoho/livechat/android/ui/RequestLogDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$e;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/zoho/livechat/android/ui/RequestLogDialog;Lcom/zoho/livechat/android/ui/RequestLogDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;-><init>(Lcom/zoho/livechat/android/ui/RequestLogDialog;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->this$0:Lcom/zoho/livechat/android/ui/RequestLogDialog;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/RequestLogDialog;->access$200(Lcom/zoho/livechat/android/ui/RequestLogDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$a0;I)V
    .locals 0

    check-cast p1, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;I)V
    .locals 1

    iget-object p1, p1, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->this$0:Lcom/zoho/livechat/android/ui/RequestLogDialog;

    invoke-static {v0}, Lcom/zoho/livechat/android/ui/RequestLogDialog;->access$200(Lcom/zoho/livechat/android/ui/RequestLogDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$a0;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;
    .locals 1

    new-instance p1, Landroid/widget/TextView;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;->this$0:Lcom/zoho/livechat/android/ui/RequestLogDialog;

    invoke-static {p2}, Lcom/zoho/livechat/android/ui/RequestLogDialog;->access$100(Lcom/zoho/livechat/android/ui/RequestLogDialog;)Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x2

    const/high16 v0, 0x41800000    # 16.0f

    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    const-string p2, "#99000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/zoho/livechat/android/config/DeviceConfig;->getRegularFont()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance p2, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter$LogViewHolder;-><init>(Lcom/zoho/livechat/android/ui/RequestLogDialog$LogViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
