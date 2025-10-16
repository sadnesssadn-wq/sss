.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

.field public final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method public constructor <init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;->this$0:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;->val$menu:Landroid/view/Menu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;->val$menu:Landroid/view/Menu;

    sget v1, Lcom/zoho/livechat/android/R$id;->action_search:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->performIdentifierAction(II)Z

    return-void
.end method
