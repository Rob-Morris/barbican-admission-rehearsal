cfg_if::cfg_if! {
    if #[cfg(target_os = "macos")] {
        pub fn selected_platform() -> &'static str { "macos" }
    } else {
        pub fn selected_platform() -> &'static str { "other" }
    }
}

#[cfg(test)]
mod tests {
    #[test]
    fn harmless_platform_selection() {
        assert_eq!(super::selected_platform(), "macos");
    }
}
