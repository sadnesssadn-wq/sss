.class public Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->onBindViewHolder(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

.field public final synthetic val$locationSuggestion:Lcom/zoho/livechat/android/models/LocationSuggestion;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;Lcom/zoho/livechat/android/models/LocationSuggestion;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;->val$locationSuggestion:Lcom/zoho/livechat/android/models/LocationSuggestion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->access$500(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;->this$0:Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;

    invoke-static {p1}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;->access$500(Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter;)Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$1;->val$locationSuggestion:Lcom/zoho/livechat/android/models/LocationSuggestion;

    invoke-interface {p1, v0}, Lcom/zoho/livechat/android/ui/adapters/LocationSuggestionAdapter$LocationSuggestionClickListener;->OnSuggestionClick(Lcom/zoho/livechat/android/models/LocationSuggestion;)V

    :cond_0
    return-void
.end method
