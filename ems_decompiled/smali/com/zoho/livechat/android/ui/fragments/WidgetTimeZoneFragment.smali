.class public Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;
.super Lb/m/d/l;
.source ""

# interfaces
.implements Landroidx/appcompat/widget/SearchView$l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

.field private handler:Landroid/os/Handler;

.field private timeZonePicker:Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;

.field private timeZonesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private tzList:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/m/d/l;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonesList:Ljava/util/ArrayList;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->adapter:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonePicker:Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonesList:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-super {p0, p1}, Lb/m/d/l;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p2

    sget v0, Lcom/zoho/livechat/android/R$menu;->siq_menu_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    sget p2, Lcom/zoho/livechat/android/R$id;->action_search:I

    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$l;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    sget v2, Lb/b/f;->search_mag_icon:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lb/b/f;->search_src_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, "#66ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    sget v1, Lcom/zoho/livechat/android/R$string;->abc_search_hint:I

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHint(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;

    invoke-direct {v0, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$1;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)V

    invoke-interface {p2, v0}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;

    invoke-direct {v0, p0, p1}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$2;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;Landroid/view/Menu;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    sget p3, Lcom/zoho/livechat/android/R$layout;->siq_fragment_timezone_picker:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_dialog_toolbar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/Toolbar;

    const-string p3, ""

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/zoho/livechat/android/utils/ResourceUtil;->fetchPrimaryColor(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p3

    check-cast p3, Lb/b/k/h;

    invoke-virtual {p3, p2}, Lb/b/k/h;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p2

    check-cast p2, Lb/b/k/h;

    invoke-virtual {p2}, Lb/b/k/h;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->o(Z)V

    invoke-virtual {p2, p3}, Landroidx/appcompat/app/ActionBar;->s(Z)V

    sget v0, Lcom/zoho/livechat/android/R$drawable;->salesiq_vector_navigation_back:I

    invoke-virtual {p2, v0}, Landroidx/appcompat/app/ActionBar;->r(I)V

    :cond_0
    const/4 p2, 0x0

    invoke-static {p2}, Lcom/zoho/livechat/android/utils/TimeZoneUtil;->getZonesList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonesList:Ljava/util/ArrayList;

    sget p2, Lcom/zoho/livechat/android/R$id;->siq_timezone_list:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->tzList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance p2, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    invoke-direct {p2, p0}, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;-><init>(Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;)V

    iput-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->adapter:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->tzList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->tzList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->adapter:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$e;)V

    iget-object p2, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->tzList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonesList:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zoho/livechat/android/utils/TimeZoneUtil;->getTimeZoneIndex(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    invoke-virtual {p0, p3}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/LiveChatUtil;->hideKeyboard(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Lb/m/d/m;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/zoho/livechat/android/utils/TimeZoneUtil;->getZonesList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonesList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->adapter:Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment$TimeZoneAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$e;->notifyDataSetChanged()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setTimeZonePicker(Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/zoho/livechat/android/ui/fragments/WidgetTimeZoneFragment;->timeZonePicker:Lcom/zoho/livechat/android/ui/listener/TimeZonePicker;

    return-void
.end method
